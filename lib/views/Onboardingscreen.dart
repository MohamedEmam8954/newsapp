import 'package:clone_newsapp/components/page_view_catgory.dart';
import 'package:clone_newsapp/models/pageview_model.dart';
import 'package:clone_newsapp/views/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardingscreen extends StatefulWidget {
  Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  int x = 0;
  final controller = PageController();

  final List<Pageviewmodel> info = const [
    Pageviewmodel(
        image: 'assets/news1.jpg',
        subtitle:
            'Welcome to our cutting-edge news application, your go-to source for staying informed about the latest headlines',
        text: 'Welcome to newsapp'),
    Pageviewmodel(
        image: 'assets/news2.jpg',
        subtitle:
            ' Our app brings you breaking news, in-depth analysis, and a diverse range of stories, covering politics, technology, entertainment, sports, health, and more.',
        text: 'App brings'),
    Pageviewmodel(
        image: 'assets/news3.jpg',
        subtitle:
            'Join us on a journey of discovery as we strive to keep you informed, engaged, and connected to the ever-evolving world of news.',
        text: 'Join us'),
  ];
  int ck = 0;
  void getchanges(int value) {
    setState(() {
      if (value == info.length - 1) {
        ck = 1;
      } else
        ck = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(elevation: 0, backgroundColor: Colors.transparent, actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return Home_page();
              },
            ));
          },
          child: Text(
            'Skip',
            style:
                TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 20),
          ),
        )
      ]),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                height: 500,
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: getchanges,
                  controller: controller,
                  itemCount: info.length,
                  itemBuilder: (context, index) {
                    return Catgorypageview(pageviewmodel: info[index]);
                  },
                )),
            SmoothPageIndicator(
              controller: controller,
              count: info.length,
              axisDirection: Axis.horizontal,
              effect: WormEffect(
                  spacing: 8.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.orange),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 150, right: 160),
        child: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {
            if (ck == 0) {
              controller.nextPage(
                  duration: Duration(milliseconds: 500), curve: Curves.linear);
            } else {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                builder: (context) {
                  return Home_page();
                  ;
                },
              ), (route) => false);
            }
          },
          child: Icon(Icons.arrow_forward_ios),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
