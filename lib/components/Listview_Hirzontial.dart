import 'package:clone_newsapp/components/Catgoryhirzontial.dart';
import 'package:clone_newsapp/models/catgory_hirzontial_model.dart';
import 'package:flutter/material.dart';

class Listview_hirzontial extends StatelessWidget {
  const Listview_hirzontial({super.key});
  final List<Catgoryhirzontialmodel> info = const [
    Catgoryhirzontialmodel(
        image: 'assets/white-pills-stethoscope.jpg', text: 'health'),
    Catgoryhirzontialmodel(image: 'assets/technology.jpg', text: 'technology'),
    Catgoryhirzontialmodel(image: 'assets/sports-tools.jpg', text: 'sports'),
    Catgoryhirzontialmodel(
        image: 'assets/experiment-biotechnology-with-chemistry-science.jpg',
        text: 'science'),
    Catgoryhirzontialmodel(
        image: 'assets/startup-business-teamwork-meeting-concept.jpg',
        text: 'business'),
    Catgoryhirzontialmodel(
        image: 'assets/entertaiment.avif', text: 'entertainment'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: info.length,
        itemBuilder: (contex, index) {
          return Catgory_hirzontial(
            catgoryhirzontialmodel: info[index],
          );
        });
  }
}
