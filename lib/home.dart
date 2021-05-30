import 'package:flutter/material.dart';
import 'package:travel_recommendation_ui/myTheme.dart';
import 'package:travel_recommendation_ui/widget/accommodation.dart';
import 'package:travel_recommendation_ui/widget/food.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Opacity(
              opacity: 0.08,
              child: Image.asset('assets/images/background.jpg')),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: MyTheme.basic,
                  ),
                  Text("EXPLORE",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  Text(
                    "HELSINKI",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Accommodation',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: MyTheme.basic,
                          ),
                          onPressed: () {})
                    ],
                  ),
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Accommodation(
                          id: "1",
                          img: "hotel1",
                          name: "Cerulean Blossom",
                          type: "Resort & Spa",
                          rating: "4.7",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Accommodation(
                          id: "2",
                          img: "hotel4",
                          name: "Light Jewel",
                          type: "Hotel",
                          rating: "4.5",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Food',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: MyTheme.basic,
                          ),
                          onPressed: () {})
                    ],
                  ),
                  Container(
                    height: 190,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Food(
                          img: "food1",
                          name: "Breakfast",
                          icon: Icons.free_breakfast,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Food(
                          img: "food4",
                          name: "Fine dining",
                          icon: Icons.local_bar_outlined,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Food(
                          img: "food1",
                          name: "Fast food",
                          icon: Icons.room_service,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
