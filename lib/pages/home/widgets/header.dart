import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
      const Padding(
        padding: EdgeInsets.only(
          left: 16.0,
          top: 8.0,
        ),
        child: Text(
          "Bookshelf",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        child: Text(
          "Welcome Amazon",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
    ];
