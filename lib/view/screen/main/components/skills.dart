import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: AnimatedCirc
            )
          ],
        )
      ],
    );
  }
}
