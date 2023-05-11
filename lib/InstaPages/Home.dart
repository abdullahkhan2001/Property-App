

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/stories.dart';


class Home extends StatefulWidget {

  
  @override
  _HomeState createState() => _HomeState();
}
final List people = [
    'obama',
    'usama',
    'ahmed',
    'amjad',
    'arshad',
    'ghafoor'
  ];
class _HomeState extends State<Home> {
  int _selectedindex = 3;
void navigatebottomNavBar (int index) {
setState((){
  _selectedindex = index;
}
);
}

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           backgroundColor: Color.fromARGB(0, 0, 0, 0),
            elevation: 3,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text( 'Instagram',
                style: TextStyle(color: Colors.black),
                ),
                Row(
                  children: [
                  Icon (Icons.add), 
                  Padding(padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                  ),
                  Icon (Icons.share),
              ],
            )
            ],
        )

        ),
        body: Column(
          children: [
            //  Stories
            Container(
              height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index){
                return Stories(text: people[index]);
              }
            )
            ),
          ],  
                      ),
                      bottomNavigationBar: BottomNavigationBar(
                        currentIndex: _selectedindex,
                        onTap: navigatebottomNavBar,
                       type: BottomNavigationBarType. fixed,
                     items:[
                     BottomNavigationBarItem(icon:Icon(Icons.home),label:'home'),
                     BottomNavigationBarItem(icon:Icon(Icons.search),label:'search'),
                     BottomNavigationBarItem(icon:Icon(Icons.video_call),label:'reets'),
                     BottomNavigationBarItem(icon:Icon(Icons.shop),label:'shop'),
                     BottomNavigationBarItem(icon:Icon(Icons.person),label:'account'),
                     ],
      ),
    ),
    );
  }
}