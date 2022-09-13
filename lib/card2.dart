import 'package:flutter/material.dart';
import 'package:fooderlich/author_card.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(height: 450, width: 350),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            const AuthorCard(
                authorName: "Al Sayeed",
                title: "SE",
                imageProvider: AssetImage("assets/avatar.png")),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        "Recipe",
                        style: FooderlichTheme.lightTextTheme.headline1,
                      )),
                  Positioned(
                      bottom: 90,
                      left: 10,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "Smoothies",
                          style: FooderlichTheme.lightTextTheme.headline1,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
