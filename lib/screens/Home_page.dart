import 'package:flutter/material.dart';
import 'package:lab7_ass/screens/Colors_page.dart';
import 'package:lab7_ass/screens/Numbers_page.dart';
import 'package:lab7_ass/screens/familyMembers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Language Learning app"),
        ) ,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Center(
                child: Text("Your way to learn japanese",style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            GestureDetector(
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NumbersPage();
                }));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15),
                color: Colors.orange,
                height: 65,
                width: double.infinity,
                child: Text(
                  'Numbers',
                  style: TextStyle(color: Colors.white,fontSize: 18 ),
                  ),
              ),
            ),

            GestureDetector(
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return familyMembersPage();
                }));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15),
                color: Colors.green,
                height: 65,
                width: double.infinity,
                child: Text(
                  'Family Members',
                  style: TextStyle(color: Colors.white,fontSize: 18 ),
                  ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return colorsPage();
                }));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15),
                color: Colors.purple,
                height: 65,
                width: double.infinity,
                child: Text(
                  'Colors',
                  style: TextStyle(color: Colors.white,fontSize: 18 ),
                  ),
              ),
            ),
            
          ],
        ),
        );
  }
}