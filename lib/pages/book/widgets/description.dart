import 'package:flutter/material.dart';

List<Widget> buildDescription() => [
      // ignore: prefer_const_constructors
      Expanded(
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Text(
              "This is random text just to take up space in the book description. But it must be a good book, it's in the Best Sellers, right? This is random text just to take up space in the book description. But it must be a good book, it's in the Best Sellers, right?",
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Share"),
            TextButton(
              onPressed: () {},
              child: const Text("One Click Purchase"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                minimumSize: Size(5, 5),
                backgroundColor: Colors.deepOrange,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
