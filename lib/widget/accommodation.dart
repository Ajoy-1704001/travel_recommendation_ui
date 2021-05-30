import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_recommendation_ui/details.dart';
import 'package:travel_recommendation_ui/widget/rating.dart';

class Accommodation extends StatelessWidget {
  final String id;
  final String img;
  final String type;
  final String name;
  final String rating;
  Accommodation(
      {Key key, this.id, this.img, this.type, this.name, this.rating});
  @override
  Widget build(BuildContext context) {
    print(img);
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      id: id,
                      img: img,
                      name: name,
                      type: type,
                      rating: rating,
                    )));
      },
      child: Hero(
        tag: id,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Container(
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.black12, BlendMode.softLight),
                  child: Image.asset(
                    'assets/images/$img.jpg',
                    width: 200,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Text(
                          type,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  )),
              Positioned(
                child: Rating(
                  value: rating,
                ),
                right: 20,
                top: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
