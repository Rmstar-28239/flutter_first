import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class services extends StatelessWidget {
  const services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: servicesthe(),
      theme: ThemeData(
        primaryColor:Colors.amber,
        primarySwatch:Colors.red,
        accentColor: Colors.redAccent,
      ),
    );
  }
}
class servicesthe extends StatefulWidget {
  const servicesthe({Key? key}) : super(key: key);

  @override
  State<servicesthe> createState() => _servicestheState();
}

class _servicestheState extends State<servicesthe> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(' Services '),
          automaticallyImplyLeading: true,
          leading: IconButton(icon:Icon(Icons.arrow_back_ios_new),
            onPressed:() => Navigator.of(context).push(MaterialPageRoute(builder:(context)=>MyApp())),
          ),
      ),
      body:SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [

              Container(
                child: Column(
                  children: [
                    Row(
                      children: [

                        Expanded(
                            child:InkWell(
                              child: Container(
                                margin: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    new BoxShadow(
                                      color: Colors.white,
                                      offset: new Offset(10.0,10.0),
                                    ),
                                  ],
                                ),
                          height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: const Text("Top Services",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.white),)),
                                    Text("220",style: TextStyle(fontSize: 25,color: Colors.white),),
                                  ],
                                ),
                                 ),
                              onTap: (){
                                setState(() {

                                });

                              },
                            ),
                        ),

                        Expanded
                          (
                            child:InkWell(
                            child: Container(
                            margin: EdgeInsets.all(6),
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.white,
                                  offset: new Offset(10.0,10.0),
                                ),
                              ],
                            ),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(child: const Text(' My Services ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.white),)),
                                Text("220",style: TextStyle(fontSize: 25,color: Colors.white),),
                              ],
                            ),
                        ),
                              onTap: ()
                              {
                                 setState(() {

                                 });
                              },
                          ),
                        ),

                        Expanded(
                            child:InkWell(
                              child: Container(
                                margin: EdgeInsets.all(6),
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    new BoxShadow(
                                      color: Colors.white,
                                      offset: new Offset(10.0,10.0),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: Text("All Services",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.white),)),
                                    Text("220",style: TextStyle(fontSize: 25,color: Colors.white),),
                                  ],
                                ),
                                ),
                              onTap: (){
                                 setState(() {

                                 });
                              },
                            ),
                        ),
                      ],
                    ),
                    After(),
                  ],
                ),
              ),
            ],//children
          ),
        ),
      ),
    );
  }
}
class After extends StatefulWidget {
  const After({Key? key}) : super(key: key);

  @override
  State<After> createState() => _AfterState();
}

class _AfterState extends State<After> {
  @override
  Widget build(BuildContext context) {
    var imgu;

    return Container(
      child: Row(
        children: [
          Expanded(flex:2,child:Container(child:Column(
            children: [

              InkWell(
                child: Container(
                  width: double.maxFinite,
                  height: 300,
                  margin:EdgeInsets.all(6),
                  decoration: BoxDecoration(color: Colors.red,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.white,
                    offset: new Offset(5.0,5.0),
                  ),
                ],
              ),
                  child: Stack(
                    children: [
                      Container(alignment: Alignment.center,
                          child: const Text("Select Image",style: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.bold),)),
                      Container(
                        height: double.maxFinite,
                          width: double.maxFinite,
                          margin:EdgeInsets.all(5),
                          ),
                    ],
                  ),
                ),
              onTap: () async
                {
                  setState(() async  {
                    // var picked = await FilePicker.platform.pickFiles();
                    // if (picked != null) {
                    //   print(picked.files.first.name);
                    //   imgu=picked.files.first.path;
                    // }
                  });
                },
              ),

              SizedBox(height: 8,),

              Container(
                margin: EdgeInsets.only(left: 6,right: 6),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Services Name',
                    border:OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 8,),

              Container(
                margin: EdgeInsets.only(bottom:8),
                child: ElevatedButton(
                  child: const Text('Upload'),
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 17,bottom: 17),
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                ),
              ),


            ],
          ),
          ),
          ),
          Expanded(flex:3,
            child: Container(
              child:Column(
              children: [

            ],
          ),
          ),
          ),
        ],
      ),
    );
  }
}


