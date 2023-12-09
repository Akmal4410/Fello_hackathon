import 'package:fello_hackathon/presentation/feature/add_goal/add_goal_page.dart';
import 'package:fello_hackathon/presentation/feature/home/widgets/goal_card.dart';
import 'package:fello_hackathon/presentation/feature/home/widgets/home_page_appbar.dart';
import 'package:fello_hackathon/presentation/feature/home/widgets/total_goal_card.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomePageAppBar(),
          const TotalGoalCard(),
          _addGoalSection(context),
          SliverPadding(
            padding: kAppPaddingAll12,
            sliver: SliverGrid.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.3,
              ),
              itemBuilder: (context, index) {
                return const GoalCard();
              },
            ),
          )
        ],
      ),
    );
  }

  SliverPadding _addGoalSection(BuildContext context) {
    return SliverPadding(
      padding: kAppPaddingHorizontal12,
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Goals List",
              style: kTextStyle14MediumWhite,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddGoalPage()),
                );
              },
              icon: const Icon(
                Icons.add,
                size: 24.0,
              ),
              label: const Text(
                'Add Goal',
              ), // <-- Text
            ),
          ],
        ),
      ),
    );
  }
}
