import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerUI1(),
  ));
}

class DrawerUI1 extends StatelessWidget {
  const DrawerUI1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellowAccent.shade100,Colors.redAccent.shade100,Colors.pinkAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('sundar pichai'),
                accountEmail: Text('Ceo of Google'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.cnbcfm.com/api/v1/image/105621417-1544554475576gettyimages-1071800216.jpeg?v=1582320783&w=740&h=416&ffmt=webp&vtcrop=y'),
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('dashboard'),
              ),
              ListTile(
                leading: Icon(Icons.leak_add_sharp),
                title: Text('leads'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('client'),
              ),
              ListTile(
                leading: Icon(Icons.rocket_launch),
                title: Text('project'),
              ),
              ListTile(
                leading: Icon(Icons.unsubscribe),
                title: Text('subscription'),
              ),
              ListTile(
                leading: Icon(Icons.library_books),
                title: Text('library'),
              ),
              SizedBox(height: 200,),
              ElevatedButton(onPressed: (){},
                  child: Text('Logout',style: TextStyle(),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent
                ),
              ),

            ],
          ),
        ),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network('https://image.cnbcfm.com/api/v1/image/105621417-1544554475576gettyimages-1071800216.jpeg?v=1582320783&w=740&h=416&ffmt=webp&vtcrop=y'),
          ),
          SizedBox(height: 20,),
          Text('sundar pichai',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
          SizedBox(height: 30,),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text("         Sundar Pichai, born on July 12, 1972, is an Indian-American business executive"
                  " and computer engineer, widely recognized for his leadership role at Google and its parent "
                  "company, Alphabet Inc. He grew up in Chennai, India, and displayed an early aptitude for technology."
                  " Pichai pursued his education at the Indian Institute of Technology Kharagpur and later earned "
                  "a master's degree in engineering from Stanford University and an MBA from the Wharton School of the University of Pennsylvania "
                  "Pichai joined Google in 2004 and quickly became known for his contributions to the development of Google Chrome, "
                  "which eventually became the world's most popular web browser. His work extended to other key projects such as "
                  "Google Drive and Google Apps. His ability to lead and innovate led to his appointment as CEO of Google in 2015."
                  "Under his leadership, Google continued to expand its reach and influence across various technology sectors,"
                  " including search, cloud computing, artificial intelligence, and mobile operating systems."
                  " Pichai's vision emphasized the importance of AI-driven technologies and machine learning in"
                  " shaping the future of Google's products and services."
                  "In 2019, when Alphabet Inc. was formed as the parent company of Google, "
                  "Pichai also became the CEO of Alphabet, taking on the responsibility of overseeing"
                  " its various subsidiaries. His leadership style is often described as calm, strategic,"
                  " and focused on user experience. "),
            ),
          ),
        ],

      ) ,
    );
  }
}
