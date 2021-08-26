import 'package:find_influencer/models/influencer.dart';
import 'package:find_influencer/pages/detail.dart';
import 'package:find_influencer/theme.dart';
import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  final Influencer influencer;

  PopularCard(this.influencer);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage(influencer)
            ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 110,
              height: 110,
              child: Stack(
                children: [
                  Image.network(
                    influencer.imageUrl,
                    width: 200,
                    height: 200,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: orangeColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.stars,
                            color: whiteColor,
                            size: 14,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            influencer.engagementRate,
                            style: whiteStyle.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  influencer.account,
                  style: greyStyle.copyWith(fontSize: 11),
                ),
                Text(
                  influencer.name,
                  style: blackStyle.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.people_rounded,
                      color: purpleColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      influencer.followers,
                      style: purpleStyle.copyWith(fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                // Text(
                //   influencer.categories,
                //   style: greyStyle.copyWith(fontSize: 11),
                // ),
                // Text.rich(
                //   TextSpan(text: influencer.followers, style: purpleStyle.copyWith(fontSize: 14),
                //   children: [
                //     TextSpan(text: ' Followers',style: greyStyle.copyWith(fontSize: 14))
                //     ]
                //   )
                // ),
                SizedBox(
                  height: 7,
                ),
                // Container(
                //   width: 200,
                //   child: ListView(
                //     scrollDirection: Axis.horizontal,
                //     children: 
                //       influencer.categories.map((item){
                //         return Container(
                //           child: Text(item),
                //         );
                //       }).toList()
                //     ,
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
