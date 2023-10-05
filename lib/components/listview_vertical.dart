import 'package:clone_newsapp/components/Catgoryvertical.dart';

import 'package:flutter/material.dart';

class Listview_vertical extends StatelessWidget {
  const Listview_vertical({super.key, required this.article});
  final article;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: article.length,
      itemBuilder: (context, index) {
        return Catgory_vertial(
          articlemodel: article[index],
        );
      },
    );
  }
}

//  ck == 1
//         ? article.isNotEmpty
//             ? SliverList.builder(
//                 itemCount: article.length,
//                 itemBuilder: (context, index) {
//                   return Catgory_vertial(
//                     articlemodel: article[index],
//                   );
//                 },
//               )
//             : SliverFillRemaining(
//                 child: Center(
//                     child: Text(
//                   "obs There is an error!!",
//                   style: TextStyle(fontSize: 24),
//                 )),
//               )
//         : const SliverFillRemaining(
//             child: Center(child: CircularProgressIndicator()),
//           );