import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 91, 11, 230)),
        // primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var no1Controller =TextEditingController();
  var no2Controller =TextEditingController();
  var result = '';
    @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 31, 41, 227),
       
        title: const Center(child:  Text('Basic Calculator',style: TextStyle(fontSize: 20,color: Colors.white,),)),
      ),
      body:  Container(
        color: Colors.blue.shade100,
        child: Center(
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                 
                  const Text('enter your first input',style: TextStyle(fontSize: 18),),
                 
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: TextField(
                    keyboardType: TextInputType.number,
                   
                    controller: no1Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                   ),
                 ),
                 
                 const Text('enter your second input',style: TextStyle(fontSize: 18),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                   ),
                 ),
        
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var num1 = int.parse(no1Controller.text.toString());
                        var num2 = int.parse(no2Controller.text.toString());
                        var sum = num1+ num2;
                  
                        setState(() {
                          result = "$sum";
                        });
                  
                      }, child: const Text('Add'),
                      ),
                      ElevatedButton(onPressed: (){
                        var num1 = int.parse(no1Controller.text.toString());
                        var num2 = int.parse(no2Controller.text.toString());
                        var sub = num1-num2;
                  
                        setState(() {
                          result = "$sub";
                        });
                      }, child: const Text('Sub'),
                      ),
                  
                      ElevatedButton(onPressed: (){
                        
                        var num1 = int.parse(no1Controller.text.toString());
                        var num2 = int.parse(no2Controller.text.toString());
                        var mul = num1* num2;
                  
                        setState(() {
                          result = "$mul";
                        });
                  
                      }, child: const Text('Mul'),
                      ),
                      ElevatedButton(onPressed: (){
                        
                        var num1 = int.parse(no1Controller.text.toString());
                        var num2 = int.parse(no2Controller.text.toString());
                        var div = num1/num2;
                  
                        setState(() {
                          result = "$div";
                        });
                      }, child: const Text('Div'),
                      ),
                    ],
                   ),
                ),

                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Result : $result',style: const TextStyle(fontSize: 20),),
                 ),
            ],
          ),
        ),
      ),
      
    );
  }
}
