import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          constraints: BoxConstraints.expand(height: 450, width: 350),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.book_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Recipe Trends",
                      style: FooderlichTheme.darkTextTheme.headline2,
                    ),
                    const SizedBox(
                      height: 30.0,
                    )
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12.0,
                    children: [
                      Chip(
                        label: Text(
                          "Healthy",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {},
                      ),
                      Chip(
                        label: Text(
                          "Vegan",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {},
                      ),
                      Chip(
                        label: Text(
                          "Spicy",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {},
                      ),
                      Chip(
                        label: Text(
                          "Continental",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {},
                      ),
                      Chip(
                        label: Text(
                          "French",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {},
                      ),
                      Chip(
                        label: Text(
                          "Italian",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {},
                      ),
                      Chip(
                        label: Text(
                          "Chinese",
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {},
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
