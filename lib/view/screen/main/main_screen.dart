import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/screen/main/components/side_menu.dart';
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
        backgroundColor: const Color(0xFF1E1E28),
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu_open_sharp)
            ),
        ),
      ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1440),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
                 Expanded(
                  flex: 2,
                    child: SideMenu(),
                ),
              SizedBox(width: 16),
              Expanded(
                flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
