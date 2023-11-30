import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home:Home()
    ));
}
// creating a stateful widget
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var Details="Show  Details";
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     
        title: Row(
    

          children: [

         Text ("Students App"),
         
         ] ),),
         body: 
         Container(
          width: 400,
          height: 300,
            // margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 211, 216, 238),
          child:   Padding(padding: EdgeInsets.all(30),
         
          child: Column(children:[
 ElevatedButton(
          
                onPressed: () {
                  setState(() {
                   
                    // Details="Students Details:John Doe,Age:20, Grade: A";
                     if (Details == "Students Details:John Doe,Age:20, Grade: A") {
              Details = "Show  Details";
            } else if (Details == "Show  Details") {
              Details = "Students Details:John Doe,Age:20, Grade: A";
            }
                    }
                    );
         
         },
        
            style:ElevatedButton.styleFrom(
          backgroundColor: Colors.amber
         ),
          child:Text(Details),
          // child: ,
          
          
          ),
          SizedBox(height:50),
         ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>AboutScreen()));
        
         }, child: Text("About")),
        
          ]),),
         ),)
        
      ;
    
  }
}
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body:
          Center(child: Container(
            margin: EdgeInsets.all(50),
      color: const Color.fromARGB(255, 172, 190, 222),
      width: 400,
      height: 200,
      child:Padding(padding: EdgeInsets.all(30),
        child: Column(
       
        children: [
        Text("NAME:NAMUBIRU EDNA FLOREN"),
        Text("Registration Number: 2022/DSCE/0028/SS"),
        Text("Email: ednafloren27@gmail.com"),
     
    
         ],),),),
    ));
  }
}
class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Student {
  String _name;
  int _age;

  Student(this._name, this._age);

  String get name => _name;
  set name(String name) => _name = "john";

  int get age => _age;
  set age(int age) => _age = 20;

  void study() {
    print('$_name');
  }
}


  // var student1 = Student('gggg', 20);
  // var student2 = Student('Joy', 22);

  // // Accessing and modifying private attributes using getter and setter methods
  // student1.name = 'Glad';
  // student1.age = 21;

  // // Accessing private attributes using getter methods
  // print('${student1.name} is ${student1.age} years old.');
  // print('${student2.name} is ${student2.age} years old.');

  // // Calling a method on a Student instance
  // student1.study();
  // student2.study();



