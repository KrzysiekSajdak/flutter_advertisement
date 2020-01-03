import 'package:flutter/material.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter_advertisement_banner/main.dart';

class Page2 extends StatefulWidget {
  final String getBannerAdUnitIdPage2;

  Page2({this.getBannerAdUnitIdPage2});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('Page 2'),
            Container(
              width: 468,
              child: AdmobBanner(
                adUnitId: widget.getBannerAdUnitIdPage2,
                adSize: AdmobBannerSize.BANNER,
              ),
            ),
            Text('Second baner'),
            AdmobBanner(
              adUnitId: getBannerAdUnitId(),
              adSize: AdmobBannerSize.FULL_BANNER,
            ),
            Text('Third baner'),
            Container(
              width: 300,
              height: 250,
              child: AdmobBanner(
                adUnitId: getBannerAdUnitId(),
                adSize: AdmobBannerSize.MEDIUM_RECTANGLE,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
