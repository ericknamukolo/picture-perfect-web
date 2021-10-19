import 'package:flutter/material.dart';
import 'package:picture_perfect_web/constants/colors.dart';
import 'package:picture_perfect_web/constants/constants.dart';
import 'package:picture_perfect_web/desktop/screens/home.dart';
import 'package:picture_perfect_web/responsive_layout.dart';
import 'package:picture_perfect_web/widgets/search_field.dart';

void main() {
  runApp(const PicturePerfectWeb());
}

class PicturePerfectWeb extends StatelessWidget {
  const PicturePerfectWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Picture',
                style: kNormalBoldTextStyle,
              ),
              const SizedBox(width: 5),
              Text(
                'Perfect',
                style: kNormalBoldTextStyle.copyWith(
                  color: kprimaryColor,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SearchField(),
            Container(
              margin: EdgeInsets.only(left: 15, bottom: 10, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending Categories',
                    style: kNormalBoldTextStyle.copyWith(fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: kNormalBoldTextStyle.copyWith(
                        fontSize: 16,
                        color: Color(0xff01c5c4),
                      ),
                    ),
                  ),
                ],
              ),
              alignment: Alignment.centerLeft,
            ),
            const ResponsiveLayout(
              desktopBody: DesktopHome(),
              mobileBody: Text('Mobile'),
              tabletBody: Text('Tablet'),
            ),
          ],
        ),
      ),
    );
  }
}
