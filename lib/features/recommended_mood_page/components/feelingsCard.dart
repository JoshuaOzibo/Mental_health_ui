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
        // borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset('assets/images/pexels-pixabay-158063.jpg', 
            fit: BoxFit.cover, 
            height: 200)
          ),
          Expanded(
            child: Column(
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
          ),
        ],
      ),
    );
  }
}
