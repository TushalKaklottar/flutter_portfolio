import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/constants.dart';
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
             "assets/images/bg.jpeg",
           fit: BoxFit.cover,
           ),
           Container(color: const Color(0xFF1E1E28).withOpacity(0.66)),
           Padding(
               padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
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
                 ),
                 ),
                 if(Responsive.isMobileLarge(context))
                   const SizedBox(height: defaultPadding / 2,),
                 const MyBuildAnimatedText(),
                 const SizedBox(height: defaultPadding),
                 if(!Responsive.isMobileLarge(context))
                   ElevatedButton(
                       onPressed: () {},
                     style: TextButton.styleFrom(
                       padding: const EdgeInsets.symmetric(
                           horizontal: defaultPadding * 2,
                           vertical: defaultPadding),
                       backgroundColor: const Color(0xFFFFC107),
                     ),
                     child: const Text(
                       "EXPLORE NOW",
                       style: TextStyle(color: Color(0xFF191923)),
                     ),
                   )
               ],
             ),
           )
         ],
       ),
     );
   }
 }

 class MyBuildAnimatedText extends StatelessWidget {
   const MyBuildAnimatedText({Key? key}) :super(key: key);

   @override
   Widget build(BuildContext context) {
     return DefaultTextStyle(
         style: Theme.of(context).textTheme.titleLarge!,
         maxLines: 1,
         child: Row(
           children: [
             if(!Responsive.isMobileLarge(context)) const FlutterCodeText(),
             if(!Responsive.isMobileLarge(context))
               const SizedBox(width: defaultPadding / 2,),
             const Text("I build "),
             Responsive.isMobile(context)
             ? const Expanded(child: AnimatedText())
                 : const AnimatedText(),
             if(!Responsive.isMobileLarge(context))
               const SizedBox(width: defaultPadding / 2),
             if(!Responsive.isMobileLarge(context)) const FlutterCodeText(),
           ],
         )
     );
   }
 }




 class AnimatedText extends StatelessWidget {
   const AnimatedText({super.key});

   @override
   Widget build(BuildContext context) {
     return AnimatedTextKit(
       animatedTexts: [
         TyperAnimatedText("responsive web and mobile app.",
         speed: const Duration(milliseconds: 70),
         ),
         TyperAnimatedText("complete e-Commerce app UI.",
           speed: const Duration(milliseconds: 70),
         ),
         TyperAnimatedText("chat app with dark and light theme",
           speed: const Duration(milliseconds: 70),
         ),
       ],
     );
   }
 }



 class FlutterCodeText extends StatelessWidget {
   const FlutterCodeText({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return const Text.rich(
       TextSpan(
         text: "<",
         children: [
           TextSpan(
             text: "flutter",
             style: TextStyle(color: Color(0xFFFFC107)),
           ),
           TextSpan(text: ">"),
         ]
       )
     );
   }
 }


