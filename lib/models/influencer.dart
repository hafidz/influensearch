class Influencer {
  int id;
  String name;
  String imageUrl;
  String engagementRate;
  String category;
  String followers;
  String account;
  String urlIg;
  List categories;

  Influencer(
      {this.id,
      this.name,
      this.imageUrl,
      this.engagementRate,
      this.category,
      this.followers,
      this.urlIg,
      this.account,
      this.categories});

  Influencer.fromJson(json) {
    // id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
    engagementRate = json['engagement_rate'];
    followers = json['followers'];
    account = json['account'];
    urlIg = json['url_ig'];
    categories = json['categories'];
    // category = json['category'];
    // followers = json['followers'];
    // account = json['account'];
  }
}
