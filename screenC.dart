import 'package:flutter/material.dart';

class screenC extends StatefulWidget {
   final String value;
  const screenC({super.key, required this.value});
 

  @override
  State<screenC> createState() => _screenCState();
}

class _screenCState extends State<screenC> {
   late String updatedValue;

  @override
  void initState() {
    super.initState();
    updatedValue = widget.value;
  }

  void updateText() {
    setState(() {
      
      updatedValue = '$updatedValue is Updated in C';
     
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       title: const Text("Screen C", style: TextStyle(color: Colors.amberAccent)),),
        body :Center(
        child: Column(
          
          children: [
            
             Text(updatedValue, style: const TextStyle(fontSize: 24)),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: updateText, 
              child: const Text("Update Text"),
            ),
        
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, updatedValue);
              },
              child: const Text("Updated , Go Back"),
            )
          ],
        ),
      ),
      




    );
  }
}