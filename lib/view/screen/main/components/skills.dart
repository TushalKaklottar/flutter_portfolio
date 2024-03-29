import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_portfolio/widget/progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.8,
                    label: "Flutter"
                )
            ),
            SizedBox(width: defaultPadding),
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.72,
                    label: "Dart"
                )
            ),

          ],
        )
      ],
    );
  }
}
