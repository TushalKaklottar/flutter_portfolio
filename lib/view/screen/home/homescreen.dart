import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/screen/home/component/high_light_info.dart';
import 'package:flutter_portfolio/view/screen/home/component/home_banner.dart';
import 'package:flutter_portfolio/view/screen/home/component/my_projects.dart';
import 'package:flutter_portfolio/view/screen/main/main_screen.dart';

import 'component/recommandations.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MainPage(
      children: [
        HomeBanner(),
        HighLightInfo(),
        MyProjects(),
        Recommandations(),
      ],
    );
  }
}
