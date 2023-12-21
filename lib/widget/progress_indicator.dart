 import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
   const AnimatedCircularProgressIndicator({
     Key? key,
     required this.percentage,
     required this.label})

       :super(key: key);

   final double percentage;
   final String label;

   @override
   Widget build(BuildContext context) {
     return Column(
       children: [
         AspectRatio(
             aspectRatio: 1,
           child: TweenAnimationBuilder(
               tween:  Tween<double>(begin: 0, end: percentage),
               duration: defaultDuration,
               builder: (context,double value, child) => Stack(
                 fit: StackFit.expand,
                 children: [
                   CircularProgressIndicator(
                     value: value,
                     color: Color(0xFFFFC107),
                     backgroundColor: Color(0xFF191923),
                   ),
                   Center(
                     child: Text(
                         (value * 100).toInt().toString() + "%",
                       style: Theme.of(context).textTheme.subtitle1,
                     ),
                   ),
                 ],
               )
           ),
         )
       ],
     );
   }
 }
