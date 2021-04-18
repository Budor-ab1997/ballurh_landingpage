import 'package:flutter/material.dart';
import 'package:flutterweb_test/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  void openUrl() {
    String url =
        'https://play.google.com/store/apps/details?id=com.ezz.ballurh';
    launch(url);
  }

  void openUrl1() {
    String url = 'https://apps.apple.com/sa/app/ballurh/id1556313027';
    launch(url);
  }

  //

  List<Widget> pageChildren(double width) {
    return <Widget>[
      // Image(
      //   width: 700,
      //   height: 700,
      //   image: AssetImage(
      //     'images/design.jpeg',
      //   ),
      // ),
      Expanded(
        child: Container(
          color: Colors.white,
          width: width,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "اطلب",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 70.0,
                          color: Color(0xFFA383FF)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      width: 80,
                      height: 80,
                      image: AssetImage(
                        'images/hot-beverage_2615.png',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 1.0, horizontal: 30),
                  child: Text(
                    "واستلمها عند وصولك",
                    style: TextStyle(fontSize: 60.0, color: Color(0xFFA383FF)),
                  ),
                ),
                Text(
                  ' تبغى تاخذ قهوتك على الماشي،و ماودك توقف في الطابور؟'
                  ' '
                  'بسيطة حمل تطبيق بلورة وبضغطة زر قهوتك تكون جاهزة',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    FlatButton.icon(
                      height: 70,
                      color: Color(0xFFFD691F),
                      minWidth: 235,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0)),
                      label: Text(
                        ('حمل الآن'),
                        style: TextStyle(
                            color: Color(0xFFF7F7F7),
                            fontSize: 30.0,
                            fontWeight: FontWeight.normal),
                      ),
                      icon: Icon(
                        MyFlutterApp.ios_icon,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        openUrl1();
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    FlatButton.icon(
                      height: 70,
                      color: Color(0xFFFD691F),
                      minWidth: 235,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0)),
                      icon: Icon(
                        MyFlutterApp.android_icon,
                        color: Colors.white,
                      ),
                      label: Text(
                        ('حمل الآن'),
                        style: TextStyle(
                            color: Color(0xFFF7F7F7),
                            fontSize: 30.0,
                            fontWeight: FontWeight.normal),
                      ),
                      onPressed: () {
                        openUrl();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
