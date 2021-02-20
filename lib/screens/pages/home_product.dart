import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:weva_app/widgets/flight_categori.dart';

class HomeProduct extends StatefulWidget {
  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
              ),
              NetworkImage(
                'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
              ),
              NetworkImage(
                'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
              ),
              NetworkImage(
                  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlightCategori(
                icon: Icon(
                  Icons.flight,
                  color: Colors.white,
                  size: 35,
                ),
                text: "Flight",
                color: Colors.orange,
              ),
              FlightCategori(
                icon: Icon(
                  Icons.hotel,
                  color: Colors.white,
                  size: 35,
                ),
                text: "Hotel",
                color: Colors.pink[300],
              ),
              FlightCategori(
                icon: Icon(
                  Icons.train_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                text: "Train",
                color: Colors.pink[300],
              ),
              FlightCategori(
                icon: Icon(
                  Icons.multiple_stop_rounded,
                  color: Colors.white,
                  size: 35,
                ),
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
          height: 130,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            "https://images.pexels.com/photos/1243046/pexels-photo-1243046.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
