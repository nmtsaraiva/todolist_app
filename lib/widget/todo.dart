import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {

    var description;
    var title;
    var date;

    return Card(
      color: Colors.redAccent,
      margin: const EdgeInsets.symmetric(horizontal: 9),
      elevation: 13,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: (){},
        child: const SizedBox(
          width: double.infinity,
          height: 100,
        ),
      ),
    );
  }
}
