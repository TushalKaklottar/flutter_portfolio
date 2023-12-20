import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widget/responsive.dart';

class HomeBanner extends StatelessWidget {
   const HomeBanner({super.key});

   @override
   Widget build(BuildContext context) {
     return AspectRatio(
         aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
       child: Stack(
         fit: StackFit.expand,
         children: [
           Image.asset(
             'assets/images/bg.jpeg',
           fit: BoxFit.cover,
           ),
           Container(color: Colors.red,),
           Padding(
               padding: EdgeInsets.symmetric(horizontal: 16),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   "Discover my Amazing \nArt Space!",
                 style: Responsive.isDesktop(context)
                   ? Theme.of(context).textTheme.headline3!.copyWith(
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                 ) : Theme.of(context).textTheme.headline5!.copyWith(
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                 )
                 ),
               ],
             ),
           )
         ],
       ),
     );
   }
 }
