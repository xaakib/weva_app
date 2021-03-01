import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:weva_app/widgets/flight_categori.dart';
import 'package:weva_app/widgets/recommended_categori.dart';

class SalonScreen extends StatefulWidget {
  @override
  _SalonScreenState createState() => _SalonScreenState();
}

class _SalonScreenState extends State<SalonScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Salon",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 180.0,
            width: MediaQuery.of(context).size.width,
            child: Carousel(
              boxFit: BoxFit.cover,
              autoplay: true,
              animationCurve: Curves.linearToEaseOut,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 7.0,
              dotHorizontalPadding: 12,
              dotIncreasedColor: Colors.red,
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotColor: Colors.white,
              dotVerticalPadding: 10.0,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: [
                NetworkImage(
                    "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                NetworkImage(
                    "https://images.unsplash.com/photo-1586083702768-190ae093d34d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                NetworkImage(
                    "https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                NetworkImage(
                    'https://images.unsplash.com/photo-1480429370139-e0132c086e2a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlightCategori(
                  imageIcon: "assets/icons/flight.png",
                  text: "Flight",
                  color: Colors.orange,
                ),
                FlightCategori(
                  imageIcon: "assets/icons/hotel.png",
                  text: "Hotel",
                  color: Colors.pink[300],
                ),
                FlightCategori(
                  imageIcon: "assets/icons/train.png",
                  text: "Train",
                  color: Colors.pink[300],
                ),
                FlightCategori(
                  imageIcon: "assets/icons/more.png",
                  text: "More",
                  color: Colors.pink[300],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://images.pexels.com/photos/1243046/pexels-photo-1243046.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recommended",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Container(
            height: 350,
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 0.8),
                itemBuilder: (BuildContext context, int index) {
                  return RecoermendedCategori(
                    imageUrl:
                        "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                    text: "Salon Service",
                    subText: "California",
                    rating: "3.9",
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "All Service",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Container(
            height: 450,
            child: GridView.builder(
                itemCount: 7,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 0.8),
                itemBuilder: (BuildContext context, int index) {
                  return RecoermendedCategori(
                    imageUrl:
                        "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                    text: "Salon Service",
                    subText: "California",
                    rating: "3.9",
                  );
                }),
          ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
