import 'package:flutter/material.dart';
import 'package:job_timer/app/core/ui/job_timer_icons.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_detail_appbar.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_pie_chart.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_task_tile.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ProjectDetailAppbar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 50),
                child: ProjectPieChart(),
              ),
              ProjectTaskTile(),
              ProjectTaskTile(),
              ProjectTaskTile(),
             
            ]),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(JobTimerIcons.ok_circled2),
                  label: const Text('Finalizar Projeto'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
