import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _textController= TextEditingController();
  double val1 = 0 ;
  double val2 = 0 ;
  double val= 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'input1 ${val1}',
                ),
              ),
              TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'input2 ${val2}',
                ),
              ),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'output ${val}',
                ),
              ),




              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      val=val1+val2;
                    });

                  }, child: Text("Add")),
                  SizedBox(width: 80,),
                  ElevatedButton(onPressed: (){
                    setState((){
                      double tt = val1/val2;
                      val = tt ;
                    });
                  }, child: Text("Divide")),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      val=val1*val2;
                    });

                  }, child: Text("Multiply")),
                  SizedBox(width: 60,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      val=val1-val2;
                    });

                  }, child: Text("Subtract")),



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}