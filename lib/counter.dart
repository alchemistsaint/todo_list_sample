import "package:flutter/material.dart";

class AddCounter extends StatefulWidget {
  createState(){
    return AddCounterState();
  }
}

class AddCounterState extends State<AddCounter> {
  int counter = 0;
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Counter: $counter",
              style: TextStyle(
                fontSize: 50
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState((){
                    counter++;
                  });
                },
                child: Text("Add"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                  itemBuilder: (context, index){
                return Text("Test");
              }),
            )
          ],
        ),
      ),
    );
  }
}