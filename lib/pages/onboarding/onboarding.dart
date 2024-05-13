import 'package:artfuse/pages/features/homepage.dart';
import 'package:artfuse/utils/app_pictures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingWidget(),
    );
  }
}

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key}) : super(key: key);

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  int currentPageIndex = 0;

  List<String> imageUrls = [
    OnboardingImages().image1,
    OnboardingImages().image2,
    OnboardingImages().image3,
  ];

  List<String> headings = [
    "Variety of wallpapers for your phone",
    "Explore stunning backgrounds",
    "Customize your screen with ease",
  ];

  List<String> bodies = [
    "Discover endless wallpapers to elevate your screen's style in just a tap!",
    "Explore a vast collection of high-quality wallpapers for every mood and occasion.",
    "Customize your phone's look with ease using our intuitive app interface.",
  ];
  void nextPage() {
    setState(() {
      currentPageIndex = (currentPageIndex + 1) % imageUrls.length;
    });
  }

  void previousPage() {
    setState(() {
      currentPageIndex =
          (currentPageIndex - 1 + imageUrls.length) % imageUrls.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF000000),
            Color.fromARGB(232, 13, 13, 13),
            Color(0xFF000000),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.932],
        ),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Art ',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: "GrenzeGotisch"),
                      ),
                      TextSpan(
                        text: 'Fuse',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: "Acme"),
                      ),
                    ],
                  ),
                ),
              ),
              // Image widget using imageUrls[currentPageIndex]
              Image.network(
                imageUrls[currentPageIndex],
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: Color(0xff272727)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          headings[currentPageIndex],
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Acme",
                              color: Colors.amber),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          bodies[currentPageIndex],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Roboto",
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: previousPage,
                            icon: const Icon(
                              FontAwesomeIcons.chevronLeft,
                              color: Color(0xfff7f6f1),
                              size: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.faceLaughBeam,
                                color: currentPageIndex == 0
                                    ? Colors.amber
                                    : Colors.white,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.faceLaughBeam,
                                color: currentPageIndex == 1
                                    ? Colors.amber
                                    : Colors.white,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.faceLaughBeam,
                                color: currentPageIndex == 2
                                    ? Colors.amber
                                    : Colors.white,
                                size: 18,
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: nextPage,
                            icon: const Icon(
                              FontAwesomeIcons.chevronRight,
                              color: Color(0xfff7f6f1),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: currentPageIndex==2? Colors.amber: Colors.white,
                            foregroundColor: currentPageIndex==2? Colors.black: Colors.amber,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const HomePage(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                              ),
                            );
                          },
                          child:Text(
                            currentPageIndex==2?"Get Started !" : "Skip",
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Acme"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
