import 'dart:ui';

import 'package:flutter/material.dart';


class DetailsScreen extends StatefulWidget {
  final String poster;
  final String name;
  final String rating;
  final String about;

  const DetailsScreen({
    Key? key,
    required this.poster,
    required this.name,
    required this.rating,
    required this.about,
  }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(


      extendBody: true,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(10.0),
                        width: screenWidth,
                        height: screenHeight*0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(widget.poster),
                            fit: BoxFit.fitHeight,
                          ),
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Name: " + widget.name,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 17,

                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Rating : ' + widget.rating,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 17,

                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'About : ' + widget.about,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 17,

                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}