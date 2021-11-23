// ignore_for_file: empty_constructor_bodies, sized_box_for_whitespace

import 'package:amazon_ui_clone/models/book_model.dart';
import 'package:amazon_ui_clone/pages/book/widgets/book_display.dart';
import 'package:amazon_ui_clone/pages/book/widgets/description.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  BookPage({required this.book});
  final BookModel book;

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black87,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.book.favorite = !widget.book.favorite;
                });
              },
              // ignore: prefer_const_constructors
              icon: Icon(
                widget.book.favorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Column(
              children: [
                ...buildBookDisplay(book: widget.book),
                ...buildDescription(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
