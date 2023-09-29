import 'package:flutter/material.dart';
import 'package:module_9_prerecorded/style.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  List todoList = [];
  String item = "";

  MyInputChange(content) {
    setState(() {
      item = content;
    });
  }

  AddItem() {
    setState(() {
      todoList.add({"item": item});
    });
  }

  RemoveItem(index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('To Do App')),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Flexible(
                  fit: FlexFit.tight,
                  flex: 20,
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 70,
                            child: TextFormField(
                                onChanged: (content) => MyInputChange(content),
                                decoration:
                                    AppInputDecoration("Enter to do item"))),
                        Expanded(
                            flex: 30,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: TextButton(
                                style: AppButtonStyle(),
                                child: Icon(Icons.add_task, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    AddItem();
                                  });
                                },
                              ),
                            ))
                      ],
                    ),
                  )),
              Expanded(
                  flex: 90,
                  child: ListView.builder(
                      itemCount: todoList.length,
                      itemBuilder: (context, index) {
                        return Card(
                            child: AppSized50(Row(
                          children: [
                            Expanded(
                                flex: 80,
                                child: Text(
                                  todoList[index]["item"].toString(),
                                )),
                            Expanded(
                                flex: 20,
                                child: IconButton(
                                  style: AppButtonStyle(),
                                  icon:Icon(
                                    Icons.delete,
                                  ),
                                  onPressed: () {
                                    RemoveItem(index);
                                  },
                                ))
                          ],
                        )));
                      })),
            ],
          ),
        ));
  }
}
