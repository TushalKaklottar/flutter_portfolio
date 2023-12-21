import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';


class AreaInfoText extends StatelessWidget {
  const AreaInfoText({Key? key,
    this.text,
    this.tittle
  })
      :super(key: key);

  final String? tittle,text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tittle!,
            style: TextStyle(color: Colors.white),
          ),
          Text(text!),
        ],
      ),
    );
  }
}
