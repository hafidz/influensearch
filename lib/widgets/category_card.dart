import 'package:find_influencer/models/category.dart';
import 'package:find_influencer/theme.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: category.isActive ? purpleColor : abuColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Text(
                category.name,
                style: category.isActive ? whiteStyle.copyWith(fontSize: 13) : greyStyle.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }
}
