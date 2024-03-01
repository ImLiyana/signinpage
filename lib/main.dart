import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey,
          leading: BackButton(),
        ),
        body: Column(children: [
          Align(alignment: Alignment.bottomLeft,
            child: Text('sign in',style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),),


          ),
          SizedBox(height: 40,),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(110)),
              hintText: 'E-mail address',
            ),
          ),

          SizedBox(height: 30,),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(110)),
              hintText: 'password',
            ),
          ),

          SizedBox(height: 50,),

          ElevatedButton(onPressed: (){}, child:Text('login',),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)), ),

          SizedBox(height: 30,),
          Text('OR'),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child:Text('Facebook',), style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue))),

        ]
        ),



      ),
    );
  }
}