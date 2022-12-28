import 'package:adminloanconsltraint/main.dart';
import 'package:flutter/material.dart';
class myclient extends StatelessWidget {
  const myclient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stry(),
      theme: ThemeData(
        primaryColor:Colors.amber,
        primarySwatch:Colors.red,
        accentColor: Colors.redAccent,
      ),
    );
  }
}
class Stry extends StatefulWidget {
  const Stry({Key? key}) : super(key: key);

  @override
  State<Stry> createState() => _StryState();
}

class _StryState extends State<Stry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' My Client '),
        automaticallyImplyLeading: true,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new),
          onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
          },),
      ),
      body: Container(
        child: Stack(
          children: [


            
          ],
        ),
      ),
    );
  }
}

