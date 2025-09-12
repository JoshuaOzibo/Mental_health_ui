import 'package:flutter/material.dart';

class SelectedFeelingsButton extends StatelessWidget {
  const SelectedFeelingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        spacing: 8,
        children: [
          Text('😊', style: TextStyle(fontSize: 20)),
          Text('Anxious'),
          Center(
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 208, 208, 208),
                ),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () => {Navigator.pop(context)},
                  child: Center(
                    child: Text(
                      'X',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
