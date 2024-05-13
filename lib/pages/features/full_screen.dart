import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class FullScreen extends StatefulWidget {
  final String imageUrl;

  const FullScreen({super.key, required this.imageUrl});
  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  Future<void> setWallpapertohomeScreen() async {
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.imageUrl);
    bool setResult =
        await WallpaperManager.setWallpaperFromFile(file.path, location);
    String result = setResult.toString();
    print(result);
   ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text('Nice! Wallpaper set successfully to home screen.' , style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Acme")),
      backgroundColor: Colors.amber,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: MediaQuery.of(context).size.height*0.9
      ),
      closeIconColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side:const BorderSide(
          width: 2,
          color: Colors.black
        )
      ),
      showCloseIcon: true,
      duration: const Duration(seconds: 5),
      dismissDirection: DismissDirection.up,
    ),
  );
  }

  Future<void> setWallpapertolockScreen() async {
    int location = WallpaperManager.LOCK_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.imageUrl);
    bool setResult =
        await WallpaperManager.setWallpaperFromFile(file.path, location);
    String result = setResult.toString();
    print(result.toString());
   ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text('Nice! Wallpaper set successfully to lock screen.' , style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Acme")),
      backgroundColor: Colors.amber,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: MediaQuery.of(context).size.height*0.9
      ),
      closeIconColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side:const BorderSide(
          width: 2,
          color: Colors.black
        )
      ),
      showCloseIcon: true,
      duration: const Duration(seconds: 5),
      dismissDirection: DismissDirection.up,
    ),
  );
  }

  Future<void> setWallpapertoboth() async {
    int location = WallpaperManager.BOTH_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.imageUrl);
    bool setResult =
        await WallpaperManager.setWallpaperFromFile(file.path, location);
    String result = setResult.toString();
    print(result.toString());
   ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text('Nice! Wallpaper set successfully to both the screens.' , style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Acme")),
      backgroundColor: Colors.amber,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: MediaQuery.of(context).size.height*0.9
      ),
      closeIconColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side:const BorderSide(
          width: 2,
          color: Colors.black
        )
      ),
      showCloseIcon: true,
      duration: const Duration(seconds: 5),
      dismissDirection: DismissDirection.up,
    ),
  );
  }

 double? progress;
 String downloadedFilePath = '';
 downloadImage() {
   FileDownloader.downloadFile(
      url:widget.imageUrl,
      onProgress: (name , progress){
        setState(() {
          progress = progress;
        });
      },
      onDownloadCompleted: (value){
       print("path $value");
       
       setState(() {
         progress = null;
         downloadedFilePath = value?? "";
       });
      }
      );
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content:  Text('Downloaded to $downloadedFilePath' , style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Acme")),
      backgroundColor: Colors.amber,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: MediaQuery.of(context).size.height*0.86
      ),
      closeIconColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side:const BorderSide(
          width: 2,
          color: Colors.black
        )
      ),
      showCloseIcon: true,
      duration: const Duration(seconds: 5),
      dismissDirection: DismissDirection.up,
    ),
  );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                margin: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.amber),
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
              //{BUTTON TO SET IMAGE AS WALLPAPER}
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
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  border: Border(
                                      top: BorderSide(
                                          width: 2, color: Colors.amber))),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(children: [
                                  InkWell(
                                    onTap: () {
                                      setWallpapertolockScreen();
                                    },
                                    child: const ListOfOptions(
                                      heading: "Set wallpaper to lock screen",
                                      icon: FontAwesomeIcons.lock,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setWallpapertohomeScreen();
                                    },
                                    child: const ListOfOptions(
                                      heading: "Set wallpaper to home screen",
                                      icon: FontAwesomeIcons.mobileScreen,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setWallpapertoboth();
                                    },
                                    child: const ListOfOptions(
                                      heading: "Set wallpaper to both",
                                      icon: FontAwesomeIcons.diceTwo,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      downloadImage();
                                    },
                                    child: const ListOfOptions(
                                      heading: "Download",
                                      icon: FontAwesomeIcons.download,
                                    ),
                                  ),
                                ]),
                              ),
                            );
                          });
                    },
                    child: const Text(
                      "Set Wallpaper",
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
        ),
      ),
    );
    
  }
}

class ListOfOptions extends StatelessWidget {
  final String heading;
  final IconData icon;
  const ListOfOptions({
    super.key,
    required this.heading,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 18,
        color: Colors.amber,
      ),
      title: Text(
        heading,
        style: const TextStyle(fontSize: 16, fontFamily: "Roboto"),
      ),
    );
  }
}
