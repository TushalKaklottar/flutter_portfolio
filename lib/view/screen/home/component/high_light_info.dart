import 'package:flutter/cupertino.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_portfolio/view/screen/home/component/high_light.dart';
import 'package:flutter_portfolio/widget/animated-counter.dart';
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
            children: const [
              HighLight(
                  counter: AnimatedCounter(
                      value: 119,
                    text: "K+",
                  ),
                label: "Subscription",
              ),
              HighLight(
                  counter: AnimatedCounter(
                      value: 40,
                    text: "+",
                  ),
                label: "Videos",
              ),
            ],
          ),
          const SizedBox(height: defaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              HighLight(
                  counter: AnimatedCounter(
                      value: 30,
                    text: "+",
                  ),
                label: "Github Projects",
              ),
              HighLight(
                  counter: AnimatedCounter(
                    value: 13,
                    text: "K+",
                  ),
                label: "Stars",
              )
            ],
          )
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HighLight(
              counter: AnimatedCounter(
                value: 119,
                text: "K+",
              ),
            label: "Subscribers",
          ),
          HighLight(
              counter: AnimatedCounter(
                value: 40,
                text: "+",
              ),
            label: "Videos",
          ),
          HighLight(
              counter: AnimatedCounter(
                value: 30,
                text: "+",
              ),
            label: "Github Projects",
          ),
          HighLight(
              counter: AnimatedCounter(
                value: 13,
                text: "K+",
              ),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}
