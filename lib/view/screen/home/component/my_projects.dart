import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/projects.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_portfolio/view/screen/home/component/project_card.dart';
import 'package:flutter_portfolio/widget/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Projects",
        style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding,),
        const Responsive(
            mobile: ProjectsGridview(
              crossAxisCount: 2,
              childAspectRatio: 1.7,
            ),
            mobileLarge: ProjectsGridview(crossAxisCount: 2),
            tablet: ProjectsGridview(childAspectRatio: 1.1),
            desktop: ProjectsGridview(),
        )
      ],
    );
  }
}

class ProjectsGridview extends StatelessWidget {
  const ProjectsGridview({Key? key,
    this.crossAxisCount = 3,
     this.childAspectRatio = 1.3
  }) :super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount:  demo_projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
        ),
      itemBuilder: (context,index) => ProjectsCard(
        projects: demo_projects[index],
      ),
    );
  }
}
