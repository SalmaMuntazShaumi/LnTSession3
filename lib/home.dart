import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => Scaffold(
        body: SafeArea(
          child: Column(
            children:[
               Text('Ini text'),
               GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Coba()));
                },
                child: Container(child: Text('gesture detector'), 
                decoration: BoxDecoration(color: Colors.red),),
               ),
               ElevatedButton(onPressed: (){}, child: Text('Elevated Button'), style: ButtonStyle(shape: WidgetStatePropertyAll(OutlinedBorder.lerp(LinearBorder.none, LinearBorder.none, 10))),),
               Row(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.red), 
                    // width: 20, 
                    // height: 10, 
                    margin: EdgeInsets.all(10),
                    child: Text('ini padding'),
                    padding: EdgeInsets.all(2),
                    ),
                  Container(decoration: BoxDecoration(color: Colors.purple), width: 20, height: 10),
                ],
               )
            ],
          ),
        ),
      ),
    );
  }
}

class Coba extends StatelessWidget {
  const Coba({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('ini halaman coba'),
    );
  }
}