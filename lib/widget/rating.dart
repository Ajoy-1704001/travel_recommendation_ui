import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final String value;

  Rating({Key key, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xff404950)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              value,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.star,
              size: 18,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
