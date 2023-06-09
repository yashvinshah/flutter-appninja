// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() =>  runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 50, 60),
      appBar: AppBar(
        title: Text('AppNinja', ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 67, 73, 82),
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(onPressed: () {
        setState(() {
          level+=1;
        });
      },
      child: Icon(Icons.add),
      backgroundColor: Color.fromARGB(255, 78, 97, 107),
      ),
      SizedBox(width: 5),
      FloatingActionButton(onPressed: () {
        setState(() {
          if(level>0)
          level-=1;
        });
      },
      child: Icon(Icons.minimize_outlined),
      backgroundColor: Color.fromARGB(255, 78, 97, 107),
      ),
       SizedBox(width: 5),
      ],), 
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center
            (
              child: CircleAvatar
              (
                backgroundImage: AssetImage('assets/cuteninja.png'), 
                backgroundColor: Colors.transparent,
                radius: 70,
              ),
            ),
            Divider(
              height: 60,
              color: Color.fromARGB(255, 7, 8, 10),
            ),
          
            Text(
              'NAME',
              style: TextStyle(
                color: Color.fromARGB(255, 119, 152, 168),
                letterSpacing: 2,
                fontSize: 15,
              )
            ),
            SizedBox(height: 10),
            Text(
              'ToMoKo',
              style: TextStyle(
                color:  Color.fromARGB(255, 144, 185, 206),
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
                        Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Color.fromARGB(255, 119, 152, 168),
                letterSpacing: 2,
                fontSize: 15,
              )
            ),
            SizedBox(height: 10),
            Text(
              '$level',
              style: TextStyle(
                color:  Color.fromARGB(255, 144, 185, 206),
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.blueGrey[200],
                  size: 17,
                ),
                SizedBox(width: 5),
                Text(
                  'tomoko@email.com',
                  style: TextStyle(
                    color:Color.fromARGB(255, 119, 152, 168),
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    //! Bottom nav bar fluid move
bottomNavigationBar: CurvedNavigationBar(color: Color.fromARGB(255, 67, 73, 82),
 items: <Widget>[
 Icon(Icons.add, size: 30, color: Colors.blueGrey[300]),
 Icon(Icons.list, size: 30, color: Colors.blueGrey[300]),
 Icon(Icons.compare_arrows, size: 30, color: Colors.blueGrey[300]),
 ],
 backgroundColor: Color.fromARGB(255, 44, 50, 60),
 ),
    );
  }
}
