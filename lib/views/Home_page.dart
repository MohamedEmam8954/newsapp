import 'package:clone_newsapp/components/Listview_Hirzontial.dart';
import 'package:clone_newsapp/components/listview_builder.dart';

import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          //   mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange, fontSize: 24),
            ),
          ],
        ),
      ),
      body: const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 95, child: Listview_hirzontial()),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        Listview_builder(
          catgory: 'general',
        ),
      ]),
    );
  }
}
