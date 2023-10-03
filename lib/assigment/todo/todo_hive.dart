import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
void main()async{
  await Hive.initFlutter();
  await Hive.openBox('to_do Hive');
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: HiveCrud_todo(),));
}
class HiveCrud_todo extends StatefulWidget {
  @override
  State<HiveCrud_todo> createState() => _HiveCrud_todoState();
}

class _HiveCrud_todoState extends State<HiveCrud_todo> {
  List<Map<String,dynamic>> notes = [];
final mybox = Hive.box('to_do Hive');
  @override
void initState() {
 Load_notes();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Todo')),),
      body: notes.isEmpty ?

      Column(
        children: [
          SizedBox(height: 100,),
          Image.network('https://www.shipbots.com/wp-content/uploads/2022/01/28.webp'),
          Text('what do you want to do today',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 15),)
        ],
      )
          :
      ListView.builder(
          itemCount: notes.length,
          itemBuilder: (ctx,index){
            final mynotes=notes[index];
            return Card(
              child: ListTile(
                title: Text(mynotes['title']),
                subtitle: Text(mynotes['date']),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () {
                          showNotes(context, mynotes['id']);
                        }, icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          deleteNotes(mynotes['id']);
                        }, icon: const Icon(Icons.delete))
                  ],
                ),
              ),
            );
      }),
      floatingActionButton: FloatingActionButton.extended(onPressed: ()=>
          showNotes(context, null),
          label: Text('Create'),
      icon: Icon(Icons.add),
      ),
    );
  }
  final title_controller=TextEditingController();
  final detail_controller=TextEditingController();
  final date_controller=TextEditingController();

  void showNotes(BuildContext context, int? key) {
    if(key!=null){
      final currentnotes= notes.firstWhere((element) => element['id']==key);
      title_controller.text=currentnotes['title'];
      detail_controller.text=currentnotes['details'];
      date_controller.text=currentnotes['date'];
    }
showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context){
  return Container(
    padding: EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
        bottom: MediaQuery.of(context).viewInsets.top+300 ),
    child: Column(mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: title_controller,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: "Title"),
        ),
        const SizedBox(height: 15),
        Container(height: 250,
          child: TextField(
            expands: true,
            controller: detail_controller,
            maxLines: null,
            textAlignVertical: TextAlignVertical.top,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Details"),
          ),
        ),
        SizedBox(height: 15,),
        TextField(
          controller: date_controller,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: "Date"),
        ),
        ElevatedButton(
            onPressed: (){
              if(title_controller.text.isNotEmpty &&
                  detail_controller.text.isNotEmpty &&
                  date_controller.text.isNotEmpty){
                if(key==null){
                  createnote({
                    'title':title_controller.text.trim(),
                    'details': detail_controller.text.trim(),
                    'date': date_controller.text.trim()
                  });
                }else{
                  updatenotes(key,{
                    'title':title_controller.text.trim(),
                    'details': detail_controller.text.trim(),
                    'date': date_controller.text.trim()
                  });
                }
              }
              title_controller.text="";
              detail_controller.text="";
              date_controller.text="";
              Navigator.of(context).pop();
            },
            child: Text(key==null? 'create': 'update'  ))
      ],
    ),
  );
    });


  }

Future<void> createnote(Map<String, dynamic>notedata ) async {
    await mybox.add(notedata);
    Load_notes();

}

  void updatenotes(int? key, Map<String, String>updatedata ) async{
    await mybox.put(key, updatedata);
    Load_notes();
}

  void Load_notes() {
    final notes_data = mybox.keys.map((id) {
      final value = mybox.get(id);
      return {
        'id': id,
        'title': value['title'],
        'details': value['details'],
        'date': value['date'],
      };
    }).toList();

    setState(() {
      notes = notes_data.reversed.toList();
    });
  }

  Future<void> deleteNotes(int? key) async {
    await mybox.delete(key);
    Load_notes();

  }




}


