import 'package:clone_newsapp/components/Catgory_view.dart';
import 'package:clone_newsapp/models/catgory_hirzontial_model.dart';
import 'package:flutter/material.dart';

class Catgory_hirzontial extends StatelessWidget {
  const Catgory_hirzontial({super.key, required this.catgoryhirzontialmodel});
  final Catgoryhirzontialmodel catgoryhirzontialmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Catgory_view(
                catgory: catgoryhirzontialmodel.text,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5, left: 10),
        child: Container(
          alignment: Alignment.center,
          width: 155,
          height: 95,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(catgoryhirzontialmodel.image),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            catgoryhirzontialmodel.text,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
