import 'package:flutter/material.dart';
import 'package:todo_app/constant/colors.dart';

import '../widgets/todo_item.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdPurple,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu,color: tdBlack,size: 30,),
            const Center(
              child: Text("Todo"),
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('images/i21.jpg',fit: BoxFit.cover,),
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
           searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                    ),
                    child: const Text(
                      "All ToDo...",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TodoItems(),
                  TodoItems(),
                  TodoItems(),
                  TodoItems(),
                  TodoItems(),
                  TodoItems(),
                  TodoItems(),
                  TodoItems(),

          ],
        ),
        ),
          ]
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 234, 230, 230),
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(
          Icons.search,
          color: tdBlack,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20,
          minWidth: 25,
        ),
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(color: tdGray),
      ),
    ),
  );
}