import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB72b4fFPaPHbqijCPzc4Eo58HD8etkbJ4",
      projectId: "stellar-display-398208",
      appId: '1:792857541724:android:448991ff3571f9ce9cfa99',
      messagingSenderId: '',
      storageBucket: 'stellar-display-398208.appspot.com'
    ),
  );
  runApp(MaterialApp(home: FireMediaStorage(),));
}

class FireMediaStorage extends StatefulWidget {
  const FireMediaStorage({super.key});

  @override
  State<FireMediaStorage> createState() => _FireMediaStorageState();
}

class _FireMediaStorageState extends State<FireMediaStorage> {
  FirebaseStorage storage = FirebaseStorage.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Store Media'),),
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(onPressed: ()=>upload('camera'),
                  icon: Icon(Icons.camera_alt),
                  label: Text('camera')),
              ElevatedButton.icon(onPressed: ()=>upload('gallery'),
                  icon: Icon(Icons.photo),
                  label: Text('Gallery')),
            ],
          ),


          Expanded(child: FutureBuilder(
            //if firebase connection is success load data
              future: loadMedia(),///list of map images will be return here
              builder: (context,AsyncSnapshot<List<Map<String ,dynamic>>>snapshot){
                if(snapshot.connectionState==ConnectionState.done){
                  return ListView.builder(
                    itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context,index){
                      ///each map value from list images stored in map image
                      final Map<String,dynamic> image= snapshot.data![index];
                      return Card(
                       child: ListTile(
                         leading: Image.network(image['url']),
                         title: Text(image['uploadedBy']),
                         subtitle: Text(image['Message']),
                         trailing: IconButton(onPressed: ()=>deleteMedia(image['path']),
                             icon: Icon(Icons.delete)),
                       ),
                      );
                  });
                }
                return const Center(child: CircularProgressIndicator(),);
              }))
        ],
      ),
      ),
    );
  }

 Future<void> upload(String imageSource) async{
    final picker = ImagePicker();  //storage il ninn edakkan
    XFile? pickedImage;
    try{
      pickedImage = await picker.pickImage(
          source: imageSource=='camera'?
          ImageSource.camera:ImageSource.gallery,maxWidth: 1920); //method vazhi varunna id vech camera/gallery anon confirm chyth
      final String filename = path.basename(pickedImage!.path);
      File imagefile = File(pickedImage.path);
    try{
      await storage.ref(filename).putFile(imagefile,
      SettableMetadata(customMetadata: {
          'uploadedBy' : "its me asif",
          'Message': 'How you doin'
          })
      );
      setState(() {  //just to refresh ui

      });
    }on FirebaseException catch(error){
      print(error);
   }
    }catch(error){
      print(error);
    }
 }

 Future<List<Map<String ,dynamic>>> loadMedia() async{
   List<Map<String ,dynamic>>images = [];
   final ListResult result = await storage.ref().list();
   final List<Reference> allfiles = result.items;
   await Future.forEach(allfiles, (singlefile) async{
     final String fileUrl = await singlefile.getDownloadURL();
     final FullMetadata metadata = await singlefile.getMetadata();

     images.add({
       'imageurl': fileUrl,
       'path': singlefile.fullPath,
       'uploadedBy' : metadata.customMetadata? ['uploadedBy']?? 'No Data',
       'Message': metadata.customMetadata?['Message']?? 'No Description'
     });

   });
   return images;
 }

  deleteMedia(image) {}
}
