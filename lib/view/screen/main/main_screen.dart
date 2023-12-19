import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widget/responsive.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
        backgroundColor: Colors.red,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu)
            )
        ),
      ),
      drawer: ,
    );
  }
}
