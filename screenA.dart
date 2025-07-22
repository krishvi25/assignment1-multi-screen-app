import 'package:flutter/material.dart';
import 'package:assignment1/screenB.dart';

class screenA extends StatefulWidget {
  const screenA({super.key});

  @override
  State<screenA> createState() => _screenAState();
}

class _screenAState extends State<screenA> {
  String value = "Hello from Screen A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("Screen A", style: TextStyle(color: Colors.amberAccent),)
       ), 
       
       body: Center(
       
        child:
            Column( 

            children: [
                const Text("hello from A!!" ),
                ElevatedButton(onPressed: ()
                async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => screenB(value: value),
                    ),
                  );
                  if (result != null) {
                    setState(() {
                      value = result;
                    });
                  }
                },
                child: const Text('click'),
                  ),
              
  ],
            
            ),
          
        ),




      );
    }
  }