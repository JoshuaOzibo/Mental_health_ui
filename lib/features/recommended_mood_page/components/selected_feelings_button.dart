import 'package:flutter/material.dart';

class SelectedFeelingsButton extends StatelessWidget {
  const SelectedFeelingsButton({super.key, required this.feeling, required this.emoji});
  final String feeling;
  final String emoji;

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
          Text(emoji, style: TextStyle(fontSize: 20)),
          Text(feeling, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
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
                    child: Icon(Icons.cancel_outlined)
                    //  Text(
                    //   'u',
                    //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    // ),
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
