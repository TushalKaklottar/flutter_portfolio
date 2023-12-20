import 'package:flutter/material.dart';


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
        padding: EdgeInsets.only(bottom: 16),
    );
  }
}



// import 'package:flutter/material.dart';
//
// import '../../../constants.dart';
//
// class AreaInfoText extends StatelessWidget {
//   const AreaInfoText({
//     Key? key,
//     this.title,
//     this.text,
//   }) : super(key: key);
//
//   final String? title, text;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: defaultPadding / 2),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title!,
//             style: TextStyle(color: Colors.white),
//           ),
//           Text(text!),
//         ],
//       ),
//     );
//   }
// }