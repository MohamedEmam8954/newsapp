import 'package:clone_newsapp/components/listview_vertical.dart';
import 'package:clone_newsapp/models/articlesmodel.dart';
import 'package:clone_newsapp/services/newsservices.dart';
import 'package:flutter/material.dart';

class Listview_builder extends StatefulWidget {
  const Listview_builder({super.key, required this.catgory});
  final String catgory;

  @override
  State<Listview_builder> createState() => _Listview_builderState();
}

class _Listview_builderState extends State<Listview_builder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = Newsservices().generalnews(catgory: widget.catgory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Listview_vertical(article: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
                child: Text(
              "obs There is an error!!",
              style: TextStyle(fontSize: 24),
            )),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
//  ck == 1
//         ? article.isNotEmpty
//             ? Listview_vertical(article: article)
            
      