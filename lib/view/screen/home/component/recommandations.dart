import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/projects.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_portfolio/view/screen/home/component/recommendation_card.dart';

class Recommandations extends StatelessWidget {
  const Recommandations({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: defaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(demo_projects.length,
                      (index) => Padding(
                          padding: EdgeInsets.only(right: defaultPadding),
                        child: RecommendationCard(

                        ),
                      )
              ),
            ),
          )
        ],
      ),
    );
  }
}
