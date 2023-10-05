import 'package:clone_newsapp/components/listview_builder.dart';
import 'package:flutter/material.dart';

class Catgory_view extends StatelessWidget {
  const Catgory_view({super.key, required this.catgory});
  final String catgory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
            Listview_builder(catgory: catgory),
          ]),
        ),
      ),
    );
  }
}
