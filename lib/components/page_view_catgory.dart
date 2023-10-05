import 'package:clone_newsapp/models/pageview_model.dart';
import 'package:flutter/material.dart';

class Catgorypageview extends StatelessWidget {
  const Catgorypageview({super.key, required this.pageviewmodel});
  final Pageviewmodel pageviewmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              pageviewmodel.text,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Container(
              child: Text(
                pageviewmodel.subtitle,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              pageviewmodel.image,
              fit: BoxFit.fill,
              width: 300,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
