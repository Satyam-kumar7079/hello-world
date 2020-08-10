import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
   runApp(MyTechApp());
 }

 web() async {
   var url = "http://192.168.43.14";
   var reponse = await http.get(url);
   print(reponse.body);
 }

 // ignore: must_be_immutable
 class  MyTechApp extends StatelessWidget {
   String cmd;
   
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: Text('Satyam App'),
           ),
           body: Center(
             child: Container(
               width: 300,
               height: 300,
               color: Colors.blueGrey.shade300,
               child: Column(
                 children: <Widget>[
                   TextField(
                     onChanged: (value) {
                       cmd = value;
                     },
                     autocorrect: false,
                     textAlign: TextAlign.center,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       hintText: "Enter ur CMD",
                       prefixIcon: Icon(Icons.tablet_android),
                     ),
                   ),
                   FlatButton(
                     onPressed: () {
                       web();
                       print(cmd);
                     },
                    child: Text('click here')),
                   //Text('sec'),
                 ],),
             ),
           ),
           ),
       
     );
   }
 } 