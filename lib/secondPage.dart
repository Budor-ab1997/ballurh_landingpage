import 'package:flutter/material.dart';
import 'package:flutterweb_test/my_flutter_app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondPage extends StatelessWidget {
  //

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Expanded(
        flex: 1,
        child: Container(
          decoration: new BoxDecoration(color: Colors.grey.shade200),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 1.0, horizontal: 30),
                  child: Text(
                    "استمتع بطلبك المفضل بكل سهولة",
                    style: TextStyle(fontSize: 50.0, color: Color(0xFF2C0845)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image(
                            width: 80,
                            height: 80,
                            image: AssetImage(
                              'images/Download-icon.png',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "حمل التطبيق",
                            style: TextStyle(
                                fontSize: 40.0, color: Color(0xFF2C0845)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Column(
                        children: [
                          Image(
                            width: 80,
                            height: 80,
                            image: AssetImage(
                              'images/Hand-icon.png',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "اختر الطلب",
                            style: TextStyle(
                                fontSize: 40.0, color: Color(0xFF2C0845)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Column(
                        children: [
                          Image(
                            width: 80,
                            height: 80,
                            image: AssetImage(
                              'images/Location-icon.png',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "استلم عند الوصول",
                            style: TextStyle(
                                fontSize: 40.0, color: Color(0xFF2C0845)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                  height: 100,
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
            mainAxisAlignment: MainAxisAlignment.center,
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
