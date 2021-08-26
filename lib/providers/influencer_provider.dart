import 'dart:convert';

import 'package:find_influencer/models/influencer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class InfluencerProvider extends ChangeNotifier {
  getInfluencers() async {
    var result =
        await http.get(Uri.parse('https://nabungkuy.online/influencer/'));

    print(result.statusCode);
    print("ada");


    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Influencer> influencers =
          data.map((item) => Influencer.fromJson(item)).toList();
      return influencers;
    } else {
      return <Influencer>[];
    }

    // if (result.statusCode == 200) {
    //   List data = jsonDecode(result.body);
    //   List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
    //   return spaces;
    // } else {
    //   return <Space>[];
    // }
  }
}
