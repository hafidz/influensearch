import 'package:find_influencer/models/influencer.dart';
import 'package:find_influencer/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Influencer influencer;

  DetailPage(this.influencer);
  
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        throw (url);
      }
    }

    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 70),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 71,
                          backgroundColor: whiteColor,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(influencer.imageUrl),
                            radius: 70,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(influencer.name,
                          style: blackStyle.copyWith(fontSize: 23)),
                      Text(
                        influencer.account,
                        style: greyStyle,
                      )
                    ],
                  ),
                ),
              ),
              ListView(
                children: [
                  SizedBox(height: 300),
                  // SizedBox(height: MediaQuery.of(context).size.height / 2),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                      color: whiteColor,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: edge),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Container(
                                    color: purpleColor,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Followers',
                                            style: whiteStyle.copyWith(
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            influencer.followers,
                                            style: whiteStyle.copyWith(
                                                fontSize: 23),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Container(
                                    color: orangeColor,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            ' Engagement Rate',
                                            style: whiteStyle.copyWith(
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            influencer.engagementRate,
                                            style: whiteStyle.copyWith(
                                                fontSize: 23),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  color: whiteColor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Avg Likes',
                                        style: greyStyle.copyWith(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '139,143',
                                        style:
                                            purpleStyle.copyWith(fontSize: 23),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  color: whiteColor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Posts',
                                        style: greyStyle.copyWith(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '6,768',
                                        style:
                                            purpleStyle.copyWith(fontSize: 23),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  color: whiteColor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Avg Comments',
                                        style: greyStyle.copyWith(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '1,986',
                                        style:
                                            purpleStyle.copyWith(fontSize: 23),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  color: whiteColor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Global Rank',
                                        style: greyStyle.copyWith(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '885',
                                        style:
                                            orangeStyle.copyWith(fontSize: 23),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  color: whiteColor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ' Country Rank',
                                        style: greyStyle.copyWith(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '47',
                                        style:
                                            orangeStyle.copyWith(fontSize: 23),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  color: whiteColor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ' Category Rank',
                                        style: greyStyle.copyWith(fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '2',
                                        style:
                                            orangeStyle.copyWith(fontSize: 23),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: whiteColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: edge),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Category',
                            style: greyStyle.copyWith(fontSize: 13),
                          ),
                          SizedBox(height: 5),
                          // Text(
                          //   influencer.categories,
                          //   style: purpleStyle.copyWith(fontSize: 16),
                          // ),
                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: edge),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      onPressed: () {
                        launchUrl(influencer.urlIg);
                      },
                      color: purpleColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Contact Now',
                        style: whiteStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/btn_back.png',
                          width: 40,
                        )),
                    Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
