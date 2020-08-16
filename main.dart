import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MyApp(),
   ),
   );
 }

class MyApp extends StatefulWidget {
   @override
   _MyAppState createState() => _MyAppState();
 } 
 class _MyAppState extends State<MyApp> {
   var cmd;
   var webdata;
   
   myweb(cmd) async {
     // ignore: unnecessary_brace_in_string_interps
     var url = "http://192.168.43.14/cgi-bin/sample.py?x=${cmd}";
     var r = await http.get(url);

     setState(() {
       webdata = r.body;
       });
    // print(webdata);
   }
   /*var db = ["satyam", "rahul","saurbh","guddu"];
   var index = 0;
   davclick() {
     setState(() {
        });
     index += 1;
     print("Clicked!!!!");
     print("Index Change!!!");
     print(index);

   }
   */
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
         title: Text('TCS'),
       ),
       body: Center(
       child: Container(
         width: MediaQuery.of(context).size.width * 0.8,
         height: MediaQuery.of(context).size.height * 0.8,
         color: Colors.grey,
         child: Column(
           children: <Widget>[
          Text("Enter ur linux cmd ::"),
          TextField(onChanged: (value) {
            cmd = value;
          },
          autocorrect: false,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          ),
          // ignore: missing_required_param
          FlatButton(
            onPressed: () {
              myweb(cmd);
          },
           child: Text('click here')),
          Text(webdata ?? "Output Coming..."),
          ],
         ),

         )

       )
       
     );
   }
 }