import 'package:flutter/cupertino.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_portfolio/widget/responsive.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
      ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Heigh
            ],
          )
        ],
      )
          : Row(),
    );
  }
}
