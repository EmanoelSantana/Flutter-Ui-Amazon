import 'package:amazon_ui_clone/pages/home/widgets/app_bar.dart';
import 'package:amazon_ui_clone/pages/home/widgets/books_list.dart';
import 'package:amazon_ui_clone/pages/home/widgets/fab.dart';
import 'package:amazon_ui_clone/pages/home/widgets/header.dart';
import 'package:amazon_ui_clone/pages/home/widgets/icons_list.dart';
import 'package:amazon_ui_clone/pages/home/widgets/navigation_bar.dart';
import 'package:amazon_ui_clone/pages/home/widgets/new_book.dart';
import 'package:amazon_ui_clone/pages/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchBar(),
            buildIconsList(),
            const BuildBookList(),
            BuildNewBook(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFAB(),
      bottomNavigationBar: buildNavagationBar(),
    );
  }
}
