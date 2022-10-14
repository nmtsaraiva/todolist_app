import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todolist_app/widget/todo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Center(child: Text("To-do list", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),)),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 27),
        child: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                  color: Colors.black12,
                ),
                width: double.infinity,
                height: 570,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 21, vertical: 21),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Need to do", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 21),
                            child: Icon(Icons.expand_circle_down, size: 40, color: Colors.black38,)
                        ),
                      ],
                    ),
                    const Todo(),
                    const Gap(20),
                    const Todo(),
                    const Gap(20),
                    const Todo(),
                    const Gap(20),
                    const Todo(),
                    const Gap(20),
                    const Todo(),
                    const Gap(20),
                  ],
                ),
            ),
            const Gap(20),
            const Center(
              child: Icon(Icons.add_circle_outline_sharp, size: 50,),
            )
          ],
        ),
      ),
    );
  }
}
