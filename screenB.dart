import 'package:flutter/material.dart';
import 'package:assignment1/screenC.dart';
class screenB extends StatefulWidget {
  final String value;
  const screenB({super.key,required this.value});

  @override
  State<screenB> createState() => _screenBState();
}

class _screenBState extends State<screenB> {
  late String currentValue;
  @override
  void initState() {
    super.initState();
    currentValue = widget.value;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("Screen B", style: TextStyle(color: Colors.amberAccent)),),
       body: Center(
      child:
          Column(
children: [
          
          
                 
              ElevatedButton(onPressed: ()
               async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => screenC(value: currentValue),
                  ),
                );
                if (result != null) {
                  setState(() {
                    currentValue = result;
                  });
                }
              },child: const Text('click'),
                ),
                const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, currentValue);
              },
              child: const Text("Back to A"),
            )
             
],
           
           ),
         
       ),




    );
  }
}