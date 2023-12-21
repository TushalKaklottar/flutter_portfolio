import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/screen/main/components/area_info_text.dart';
import 'package:flutter_portfolio/view/screen/main/components/my_info.dart';
import 'package:flutter_portfolio/view/screen/main/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
            children: [
              const MyInfo(),
              Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children:  [
                        AreaInfoText(
                          tittle: "Residence",
                          text: "India",
                        ),
                        AreaInfoText(
                          tittle: "City",
                          text: "Surat",
                        ),
                        AreaInfoText(
                          tittle: "Age",
                          text: "19",
                        ),
                        Skills(),
                      ],
                    ),
                  )
              )
            ],
          ),
      ),
    );
  }
}

// child: Column(
// children: [
// MyInfo(),
// Expanded(
// child: SingleChildScrollView(
// padding: EdgeInsets.all(defaultPadding),
// child: Column(
// children: [
// AreaInfoText(
// title: "Residence",
// text: "Bangladesg",
// ),
// AreaInfoText(
// title: "City",
// text: "Dhaka",
// ),
// AreaInfoText(
// title: "Age",
// text: "22",
// ),
// Skills(),
// SizedBox(height: defaultPadding),
// Coding(),
// Knowledges(),
// Divider(),
// SizedBox(height: defaultPadding / 2),
// TextButton(
// onPressed: () {},
// child: FittedBox(
// child: Row(
// children: [
// Text(
// "DOWNLOAD CV",
// style: TextStyle(
// color: Theme.of(context)
//     .textTheme
//     .bodyText1!
//     .color,
// ),
// ),
// SizedBox(width: defaultPadding / 2),
// SvgPicture.asset("assets/icons/download.svg")
// ],
// ),
// ),
// ),
// Container(
// margin: EdgeInsets.only(top: defaultPadding),
// color: Color(0xFF24242E),
// child: Row(
// children: [
// Spacer(),
// IconButton(
// onPressed: () {},
// icon: SvgPicture.asset("assets/icons/linkedin.svg"),
// ),
// IconButton(
// onPressed: () {},
// icon: SvgPicture.asset("assets/icons/github.svg"),
// ),
// IconButton(
// onPressed: () {},
// icon: SvgPicture.asset("assets/icons/twitter.svg"),
// ),
// Spacer(),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// ],
// ),
// ),
// );
// }
// }

