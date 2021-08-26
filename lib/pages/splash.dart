import 'package:find_influencer/pages/home.dart';
import 'package:find_influencer/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFDFDFD),
        body: SafeArea(
            child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/splash.png')),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logo.png'))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Find Right Influencer \nto promote your brand',
                    style: blackStyle.copyWith(fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Buat Produkmu Lebih Dikenal dengan \nInfluencer yang Tepat',
                    style: greyStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 210,
                    height: 50,
                    child: RaisedButton(
                      color: orangeColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text(
                        'Explore Now',
                        style: whiteStyle.copyWith(fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
