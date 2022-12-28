import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OkThe(),
    );
  }
}
class OkThe extends StatefulWidget {
  const OkThe({Key? key}) : super(key: key);

  @override
  State<OkThe> createState() => _OkTheState();
}
class _OkTheState extends State<OkThe> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body:Container(
        color: Colors.black12,
        child: Container(
          child: Center(
            child:FittedBox(
              child: Container(
               padding: EdgeInsets.only(top: 8,bottom: 8,left: 10),
                width: width/2.5,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.white,
                      offset: new Offset(10.0,10.0),
                    ),
                  ],
                ),
                child: Column(
                  children: [

                    SizedBox(height: 15,),

                    Text("Account Login",style:TextStyle(fontWeight:FontWeight.bold,fontSize:20,color: Colors.black87)),

                    SizedBox(height: 15,),

                    Container(
                      width: width/2.8,
                      child: const TextField(
                        decoration: InputDecoration(
                          filled: true,
                          labelText: 'Enter User Name',
                          border:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          fillColor: Colors.white, //<-- SEE HERE
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    Container(
                      width: width/2.8,
                        child: const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Enter Password',
                            border:OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            fillColor: Colors.white, //<-- SEE HERE
                          ),
                        ),
                      ),

                    SizedBox(height: 15,),

                    ElevatedButton(
                      child: const Text('Login',style: TextStyle(fontWeight:FontWeight.bold),),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>MyApp()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 17,bottom: 17),
                        primary: Colors.white,
                        onPrimary: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    ),
    );
  }
}

