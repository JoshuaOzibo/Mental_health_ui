import 'package:flutter/material.dart';

class FellingsCard extends StatelessWidget {
  const FellingsCard({
    super.key,
    required this.paragraphOne,
    required this.heading,
    required this.paragraphTwo,
  });

  final String paragraphOne;
  final String heading;
  final paragraphTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Container(
            height: 200,
            width: 10,
            decoration: BoxDecoration(color: Colors.greenAccent),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                paragraphOne,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 20),
              Text(
                heading,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 15),
              Text(
                paragraphTwo,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
