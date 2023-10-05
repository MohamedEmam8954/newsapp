import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_newsapp/models/articlesmodel.dart';
import 'package:flutter/material.dart';

class Catgory_vertial extends StatelessWidget {
  const Catgory_vertial({super.key, required this.articlemodel});
  final Articlemodel articlemodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: articlemodel.image != null
                  ? CachedNetworkImage(
                      imageUrl: articlemodel.image!,
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.fill,
                      progressIndicatorBuilder: (context, url, progress) {
                        return Center(child: CircularProgressIndicator());
                      },
                    )
                  : Image.asset(
                      "assets/defalut_image.jpg",
                      fit: BoxFit.fill,
                      width: 400,
                      height: 280,
                    )),
          const SizedBox(
            height: 10,
          ),
          Text(
            articlemodel.title,
            style: const TextStyle(
                color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 2.5,
          ),
          Text(
            articlemodel.subtitle ?? '',
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
