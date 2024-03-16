import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key, required this.title});
  final String title;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChaked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.note_alt,
              size: 40,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Checkbox(
                value: isChaked,
                onChanged: (val) => {
                      setState(() {
                        isChaked = val!;
                      }),
                    })
          ],
        ),
      ),
    );
  }
}
