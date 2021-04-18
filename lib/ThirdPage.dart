import 'package:flutter/material.dart';
import 'package:flutterweb_test/my_flutter_app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdPage extends StatelessWidget {
  //

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Expanded(
        flex: 1,
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('images/back.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 1.0, horizontal: 30),
                  child: Text(
                    " اطلب،ادفع واحصل على المكافآت",
                    style: TextStyle(
                        fontSize: 70.0,
                        color: Color(0xFF2C0845),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ' استمتع بقهوتك، وتمتع بمكافآت وخصومات مع كل طلب عبر بلورة',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'المزيد عن المكافآت',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xFFA383FF),
                        decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(
                  height: 200,
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
