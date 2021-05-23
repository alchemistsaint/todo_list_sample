

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final textInputTodoController = TextEditingController();
  List<dynamic> todoList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todo List Application"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              controller: textInputTodoController,
              decoration: InputDecoration(
                hintText: "Input Todo"
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  todoList.add(textInputTodoController.text);
                });
                textInputTodoController.text = "";
              },
              child: Text("Add"),
          ),
          SizedBox(height: 50,),
          Expanded(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index){
                return Center(
                  child: Dismissible(
                    onDismissed: (direction){
                      setState(() {
                        todoList.removeAt(index);
                      });
                    },
                    key: Key(todoList[index]),
                    child: Text(
                      todoList[index],
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
