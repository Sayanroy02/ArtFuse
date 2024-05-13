import 'dart:convert';

import 'package:artfuse/Apikey/secretkey.dart';
import 'package:artfuse/pages/features/full_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
 List images =[];
 int page=1;
    @override
//[REFRESHING THE FUNCTION WHEN RUNNING THE PAGE ]
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchApi();
  }

  //[GETTING THE IMAGES ]
  Future<void> fetchApi() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated?per_page=80"),
        headers: {'authorization': apikey}).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images =result['photos'];
      });
      print(images);
    });
  }

//[LOADMORE FUNCTIONALITY]
   loadMore() async{
    setState(() {
      page = page+1;
    });
    String url ='https://api.pexels.com/v1/curated?per_page=80&page=' + page.toString();
    await http.get(Uri.parse(url),
        headers: {'authorization': apikey}).then((value){
          Map result = jsonDecode(value.body);
          setState(() {
            images.addAll(result['photos']);
          });
        });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              FontAwesomeIcons.chevronLeft,
              size: 18,
            )),
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Art ',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "GrenzeGotisch"),
              ),
              TextSpan(
                text: 'Fuse',
                style: TextStyle(
                    color: Colors.white, fontSize: 25, fontFamily: "Acme"),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.clapperboard,
                size: 18,
              ))
        ],
      ),
      body: Column(
        children: [
          //{GRID VIEW OF IMAGES}
          Expanded(
              child: Container(
            child: GridView.builder(
                itemCount: images.length,
                physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 3,
                  crossAxisCount: 3,
                  childAspectRatio: 2 / 3,
                  mainAxisSpacing: 3,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                       Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        FullScreen(imageUrl: images[index]['src']['large2x']),
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
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).shadowColor),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(images[index]['src']['tiny'], fit: BoxFit.cover,)),
                    ),
                  );
                }),
          )),

          //{BUTTON TO LOAD MORE IMAGES}
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  loadMore();
                },
                child: const Text(
                  "Load More",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Acme"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
