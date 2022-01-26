import 'package:flutter/material.dart';
class Shahadat extends StatelessWidget {
  const Shahadat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('images/pic.jpg'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
        backgroundColor: Colors.red,
      ),
    );
  }
}
