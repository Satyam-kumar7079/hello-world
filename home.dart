import 'package:flutter/material.dart';

myapp() {

var mybody = Container(
      width: 300,
      height: 300,
      alignment: Alignment.topCenter,
     //color: Colors.red,
      child: Text('Satyam',
      style: TextStyle(color: Colors.lightBlue,
      fontWeight: FontWeight.bold,
      fontSize: 50,
      ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('https://lh3.googleusercontent.com/FCT6ERZ6tm_yntio7OZvug6LabJX5A6J69fO922UxZyqhY8FbEJhpl1cefWuxw_NyAnTHUBe1b676G80KG3Pgoup8szLG3sVGdIMOWf3_btros4iqKgUacAsm2Jz0MJoLGn3yXwGYWqVcRtewRgtD20OcFKTNKNSq4uKYxI3tfsNzmn_ctgmuV_4m-zVXxV8DIe7V_2og3ewOiBEcbpbD7b7OsxGf_GUX8I4KivCd6imn6q0auDIncUXpisOKDt4knC9Z_x4H_8t0pyJmNcdpW1YQ80UAjxy8XbNNyb4Vk2ZoYlJGqahUohpr7MTOrW3Rv2OBQj6dEIyE5JfT5Hl-q9TyrIDcxo0GCESwJegJTAYSCXrRs_LrMfTXIKc0qgaWTvMyjxDtC8tmHECgYDfsdrGg-JBIL9JRcMLAUVHApC6Jcp0T59hoOfl5tcQItVBQonjRKKAoDjWF31myEjET0bs9j_xCY_aicbZ2lY9K0sRYiGEOpV-hBYSx4D2OsAwZB__OA9M9aJWTwmMjeekEbVggv-UYkehBKDmaIB8WFtd49fjl9W0VhiyL5miD4bIxlxRH_Wl_zXCkf4yGYqc4OIGak0HqQNhv9FbL8jQElzV2fUF4sfLCGpcmhWzaYpyEHi-il7rDv35dWDwLwusS4a793xyuE4BsR6Js0HVw1hm2Gbb5MWSTcgnrEDH1A=w365-h217-no?authuser=0',
          ),
        ),
         color: Colors.green,
         borderRadius: BorderRadius.circular(20),
         border: Border.all(
           width: 10,
           color: Colors.lightGreen.shade500,
         )),
);
  var myhome = Scaffold(
    appBar: AppBar(
      title: Text("Satyam"),
      backgroundColor: Colors.grey.shade500
    ),
    body: mybody,
 );

return MaterialApp(home: myhome);
}