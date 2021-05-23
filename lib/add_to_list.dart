import 'package:flutter/material.dart';

class AddToList extends StatefulWidget {
  @override
  _AddToListState createState() => _AddToListState();
}

class _AddToListState extends State<AddToList> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Counter: $counter", style: TextStyle(fontSize: 25)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState((){
                    counter++;
                  });
                },
                child: Text("Increment"),
              ),
              SizedBox(width: 20,),
              ElevatedButton(
                onPressed: () {
                  setState((){
                    counter--;
                  });
                },
                child: Text("Decrement"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
