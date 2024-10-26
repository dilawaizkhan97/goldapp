import 'package:flutter/material.dart';
class Appcounter extends StatefulWidget {
  const Appcounter({super.key});

  @override
  State<Appcounter> createState() => _AppcounterState();
}

class _AppcounterState extends State<Appcounter> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:Colors.white,
appBar:AppBar(backgroundColor:Colors.purple,
      title: Text("Appcounter",style:TextStyle(color:Colors.white)),
    centerTitle: true,
) ,
       body:Center(child:Container(
         height: 400,
         width: 300,
         decoration: BoxDecoration(color: Colors.pink.shade300,
         border: Border.all(color: Colors.purple.shade400,),
         borderRadius: BorderRadius.circular(20,)),

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('Counter=$counter', style: TextStyle(color: Colors.white,fontSize: 30,),),
             SizedBox(height: 10,),
             FloatingActionButton(onPressed:(){
               counter++;
               setState(() {

               });
       },
               backgroundColor: Colors.purple,
                 child:Icon(Icons.add,color: Colors.white,),
             ) ,
             SizedBox(height: 10,),
             FloatingActionButton(onPressed: () {
               if (counter > 0) {
                 counter--;
                 setState(() {

                 });
               }
             },backgroundColor: Colors.purple,
               child: Icon(Icons.remove_circle_outline_rounded,color: Colors.white,),
             ) ,SizedBox(height: 10,),
             FloatingActionButton(onPressed: (){
               counter=0;
               setState(() {

               });
             },
             backgroundColor: Colors.purple,
               child: Icon(Icons.refresh_rounded,color: Colors.white,),
             )  ],
               ),
         
       )
       )
    );

  }
}
