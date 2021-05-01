import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                width: 150,
                height: 150,
                image: AssetImage(
                  'images/ballurh_logos.png',
                ),
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                    height: 51,
                    color: Color(0xFFA383FF),
                    minWidth: 235,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0)),
                    child: Text(
                      ('انضم كشريك'),
                      style: TextStyle(
                          color: Color(0xFFF7F7F7),
                          fontSize: 30.0,
                          fontWeight: FontWeight.normal),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: <Widget>[
                        Text(
                          'المزيد',
                          style: TextStyle(
                              color: Color(0xFFA383FF),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFFA383FF),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    child: Text(
                      'English',
                      style: TextStyle(
                          color: Color(0xFFA383FF),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                width: 150,
                height: 150,
                image: AssetImage(
                  'assets/assets/images/ballurh_logos.png',
                ),
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                    height: 51,
                    color: Color(0xFFA383FF),
                    minWidth: 235,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0)),
                    child: Text(
                      ('انضم كشريك'),
                      style: TextStyle(
                          color: Color(0xFFF7F7F7),
                          fontSize: 30.0,
                          fontWeight: FontWeight.normal),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: <Widget>[
                        Text(
                          'المزيد',
                          style: TextStyle(
                              color: Color(0xFFA383FF),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFFA383FF),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    child: Text(
                      'English',
                      style: TextStyle(
                          color: Color(0xFFA383FF),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
