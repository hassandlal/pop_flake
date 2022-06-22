import 'dart:ui';

import 'package:flutter/material.dart';


class SearchDetailsScreen extends StatefulWidget {
  final String poster;
  final String name;

  final String about;

  const SearchDetailsScreen({
    Key? key,
    required this.poster,
    required this.name,

    required this.about,
  }) : super(key: key);

  @override
  State<SearchDetailsScreen> createState() => _SearchDetailsScreenState();
}

class _SearchDetailsScreenState extends State<SearchDetailsScreen> {
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
                            fit: BoxFit.cover,
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