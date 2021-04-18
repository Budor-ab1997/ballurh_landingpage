import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LastPage extends StatelessWidget {
  //

  void openUrl() {
    String url = 'https://twitter.com/BallurhApp';
    launch(url);
  }

  void openUrl1() {
    String url = 'https://www.linkedin.com/company/ballurhapp';
    launch(url);
  }

  void openUrl2() {
    String url = 'https://www.instagram.com/BallurhApp/';
    launch(url);
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Expanded(
        flex: 1,
        child: Container(
          decoration: new BoxDecoration(color: Color(0xFF744DA7)),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
              child: Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Image(
                          width: 100,
                          height: 100,
                          image: AssetImage(
                            'images/whiteLogo.png',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'الأحكام والشروط',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'الأسئلة الشائعة',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'تواصلو معنا',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'تابعونا',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            openUrl();
                          },
                          child: Image(
                            color: Colors.white,
                            width: 30,
                            height: 30,
                            image: AssetImage(
                              'images/Twitter.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            openUrl2();
                          },
                          child: Image(
                            color: Colors.white,
                            width: 30,
                            height: 30,
                            image: AssetImage(
                              'images/Instgram.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            openUrl1();
                          },
                          child: Image(
                            color: Colors.white,
                            width: 30,
                            height: 30,
                            image: AssetImage(
                              'images/LinkedIn.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
            mainAxisAlignment: MainAxisAlignment.start,
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
