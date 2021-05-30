import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  final String img;
  final String name;
  final IconData icon;
  Food({Key key, this.img, this.name, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Hero(
        tag: "1",
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
                    width: 120,
                    height: 190,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: 7,
                  left: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          icon,
                          size: 18,
                          color: Colors.white,
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
