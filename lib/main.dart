import 'dart:developer';
import 'package:adminloanconsltraint/Services.dart';
import 'package:adminloanconsltraint/login.dart';
import 'package:adminloanconsltraint/myclient.dart';
import 'package:flutter/material.dart';
void main()
{runApp(new login());}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Starthe(),
      theme: ThemeData(
        primaryColor:Colors.amber,
        primarySwatch:Colors.red,
        accentColor: Colors.redAccent,
      ),
    );
  }
}
class Starthe extends StatefulWidget {
  const Starthe({Key? key}) : super(key: key);

  @override
  State<Starthe> createState() => _StartheState();
}

class _StartheState extends State<Starthe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(' Home '),
      ),
      drawer: Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: [
      ListTile(
      leading: Icon(Icons.home_repair_service_sharp,color: Colors.red),
      title: const Text(' Services ',style: TextStyle(color:Colors.red),),
      onTap: () {
      Navigator.pop(context);
      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>services()));
      },
      ),
      ListTile(
      leading: Icon(Icons.book,color: Colors.red),
     title: const Text(' My Client ',style: TextStyle(color:Colors.red)),
     onTap: () {
     Navigator.pop(context);
     Navigator.of(context).push(MaterialPageRoute(builder:(context)=>myclient()));
     },
    ),
    ListTile(
    leading: Icon(Icons.workspace_premium,color: Colors.red),
    title: const Text(' All Client ',style: TextStyle(color:Colors.red)),
    onTap: () {
    Navigator.pop(context);
    },
    ),
    ListTile(
    leading: Icon(Icons.video_label,color: Colors.red,),
    title: const Text(' Chet ',style: TextStyle(color:Colors.red)),
    onTap: () {
    Navigator.pop(context);
    },
    ),
    ListTile(
    leading: Icon(Icons.notifications_active,color: Colors.red),
    title: const Text(' Notification ',style: TextStyle(color:Colors.red),),
    onTap: () {
    Navigator.pop(context);
    },
    ),
    ListTile(
    leading: Icon(Icons.logout,color: Colors.red),
    title: const Text(' LogOut ',style: TextStyle(color:Colors.red)),
    onTap: () {
    Navigator.pop(context);
    },
    ),
    ],
    ),
      ),
    );
  }
}



