import 'package:find_influencer/models/category.dart';
import 'package:find_influencer/models/influencer.dart';
import 'package:find_influencer/providers/influencer_provider.dart';
import 'package:find_influencer/theme.dart';
// import 'package:find_influencer/widgets/bottom_navbar_item.dart';
import 'package:find_influencer/widgets/category_card.dart';
import 'package:find_influencer/widgets/popular_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var influencerProvider = Provider.of<InfluencerProvider>(context);

    influencerProvider.getInfluencers();

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            // Header
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackStyle.copyWith(fontSize: edge),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Find Right Influencer to promote your brand',
                style: greyStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // category
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Category',
                style: regularStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CategoryCard(
                    Category(id: 1, name: 'All', isActive: true),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryCard(
                    Category(id: 1, name: 'Entertaiment', isActive: false),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryCard(
                    Category(id: 1, name: 'Food', isActive: false),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryCard(
                    Category(id: 1, name: 'Music', isActive: false),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryCard(
                    Category(id: 1, name: 'Film', isActive: false),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryCard(
                    Category(id: 1, name: 'Technology', isActive: false),
                  ), // SizedBox(width: 20,),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Influencer',
                style: regularStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: FutureBuilder(
                future: influencerProvider.getInfluencers(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Influencer> data = snapshot.data as List<Influencer>;

                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30,
                          ),
                          child: PopularCard(item),
                        );
                      }).toList(),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              // child: Column(
              //   children: [
              //     PopularCard(Influencer(
              //         id: 1,
              //         name: 'Raffi Ahmad ',
              //         imageUrl: 'assets/pic.jpeg',
              //         engagementRate: '1.10%',
              //         category: 'Entertaiment',
              //         followers: '46.6M',
              //         account: '@raffinagita1717')),
              //     SizedBox(
              //       height: 30,
              //     ),
              //     PopularCard(Influencer(
              //         id: 1,
              //         name: 'Agnez Monica',
              //         imageUrl: 'assets/agnez.jpeg',
              //         engagementRate: '0.70%',
              //         category: 'Entertaiment, Singer, Modelling',
              //         followers: '23.2M',
              //         account: '@agnezmonica')),
              //     SizedBox(
              //       height: 30,
              //     ),
              //     PopularCard(Influencer(
              //         id: 1,
              //         name: 'Ridwan Kamil',
              //         imageUrl: 'assets/rk.jpeg',
              //         engagementRate: '1.00%',
              //         category: 'Architecture',
              //         followers: '13.1M',
              //         account: '@ridwankamil')),
              //     SizedBox(
              //       height: 30,
              //     ),
              //     PopularCard(Influencer(
              //         id: 1,
              //         name: 'Raditya Dika',
              //         imageUrl: 'assets/radit.jpeg',
              //         engagementRate: '0.90%',
              //         category: 'Entertaiment, Humor',
              //         followers: '16.7M',
              //         account: '@raditya_dika')),
              //     SizedBox(
              //       height: 30,
              //     ),
              //     PopularCard(Influencer(
              //         id: 1,
              //         name: 'Dagelan',
              //         imageUrl: 'assets/dagelan.jpeg',
              //         engagementRate: '0.90%',
              //         category: 'Humor, Photograpy',
              //         followers: '16.1M',
              //         account: '@dagelan')),
              //     SizedBox(
              //       height: 50 + edge,
              //     ),
              //   ],
              // ),
            )
          ],
        ),
      ),
      // floatingActionButton: Container(
      //   height: 65,
      //   width: MediaQuery.of(context).size.width - (2*edge),
      //   decoration: BoxDecoration(
      //     color: abuColor,
      //     borderRadius: BorderRadius.circular(10)
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       BottomNavbarItem(
      //         imageUrl: 'assets/icon_home.png',
      //         isActive: true
      //       ),
      //         BottomNavbarItem(
      //         imageUrl: 'assets/icon_card.png',
      //         isActive: false
      //       ),
      //         BottomNavbarItem(
      //         imageUrl: 'assets/icon_email.png',
      //         isActive: false
      //       ),
      //         BottomNavbarItem(
      //         imageUrl: 'assets/icon_love.png',
      //         isActive: false
      //       )
      //     ],
      //   ),
      // ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
