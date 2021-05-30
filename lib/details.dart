import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_recommendation_ui/myTheme.dart';
import 'package:travel_recommendation_ui/widget/rating.dart';

class DetailScreen extends StatefulWidget {
  final String id;
  final String img;
  final String type;
  final String name;
  final String rating;

  DetailScreen({Key key, this.id, this.img, this.type, this.name, this.rating})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Hero(
                tag: widget.id,
                child: Image.asset(
                  'assets/images/${widget.img}.jpg',
                  fit: BoxFit.cover,
                  height: 320,
                  width: MediaQuery.of(context).size.width,
                )),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.open_in_new,
                        color: Colors.white,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Positioned(
              top: 180,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      widget.type,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    subtitle: Text(
                      widget.name,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Rating(
                      value: widget.rating,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Card(
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /*ListTile(
                                title: Text(
                                  "Location",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                                subtitle: Text(
                                  "12, Dhanmondi, Dhaka, Bangladesh",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 15, color: MyTheme.textColor),
                                ),
                                trailing: Container(
                                  height: 60,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      ElevatedButton.icon(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.grey.shade200),
                                              minimumSize:
                                                  MaterialStateProperty.all(
                                                      Size(60, 15))),
                                          icon: Icon(
                                            Icons.directions,
                                            size: 11,
                                            color: MyTheme.textColor,
                                          ),
                                          label: Text(
                                            "Directions",
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: MyTheme.textColor),
                                          )),
                                      ElevatedButton.icon(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.grey.shade200),
                                              minimumSize:
                                                  MaterialStateProperty.all(
                                                      Size(60, 15))),
                                          icon: Icon(
                                            Icons.public,
                                            size: 11,
                                            color: MyTheme.textColor,
                                          ),
                                          label: Text("Website",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: MyTheme.textColor))),
                                    ],
                                  ),
                                ))*/
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Location",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        Text(
                                          "12, Dhanmondi, Dhaka, Bangladesh",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: MyTheme.textColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        color: Colors.grey.shade200,
                                        padding: EdgeInsets.all(7),
                                        width: 90,
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.directions,
                                              size: 11,
                                              color: MyTheme.textColor,
                                            ),
                                            Text(
                                              "Directions",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: MyTheme.textColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        color: Colors.grey.shade200,
                                        padding: EdgeInsets.all(7),
                                        width: 90,
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.public,
                                              size: 11,
                                              color: MyTheme.textColor,
                                            ),
                                            Text(
                                              "Website",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: MyTheme.textColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text("Amenities"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text("See all 15 countries"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: Text(
                            "Spoke as as other again ye. Hard on to roof he drew. So sell side ye in mr evil. Longer waited mr of nature seemed. Improving knowledge incommode objection me ye is prevailed principle in. Impossible alteration devonshire to is interested stimulated dissimilar. To matter esteem polite do if. Spoke as as other again ye. Hard on to roof he drew. So sell side ye in mr evil. Longer waited mr of nature seemed. Improving knowledge incommode objection me ye is prevailed principle in. Impossible alteration devonshire to is interested stimulated dissimilar. To matter esteem polite do if. Spoke as as other again ye. Hard on to roof he drew. So sell side ye in mr evil. Longer waited mr of nature seemed. Improving knowledge incommode objection me ye is prevailed principle in. Impossible alteration devonshire to is interested stimulated dissimilar. To matter esteem polite do if. "),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey,
                  ),
                  child: ListTile(
                    title: Text("From",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    subtitle: Text(
                      "125\$ /night",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    trailing: SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("View room",
                            style: TextStyle(color: Colors.blueGrey)),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
