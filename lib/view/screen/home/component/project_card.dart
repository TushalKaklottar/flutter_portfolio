import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/projects.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_portfolio/widget/responsive.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({Key? key,required this.projects}) :super(key: key);

  final Projects projects;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: const Color(0xFF242430),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projects.tittle!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const Spacer(),
          Text(
            projects.description!,
            maxLines: Responsive.isMobileLarge(context) ?  3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Read More >>",
              style: TextStyle(color: Color(0xFFFFC107)),
            ),
          ),
        ],
      ),
    );
  }
}
