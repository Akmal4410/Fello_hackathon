import 'package:fello_hackathon/data/datasource/goal_datasource.dart';
import 'package:fello_hackathon/data/mapper/goal_mapper.dart';
import 'package:fello_hackathon/domain/entity/goal.dart';
import 'package:fello_hackathon/domain/repository/i_goal_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGoalRepo)
class GoalRepoImpl implements IGoalRepo {
  final GoalDatasource _datasource;

  GoalRepoImpl(this._datasource);
  @override
  Future<List<Goal>> getAllGoals() async {
    List<Goal> goals = [];
    try {
      final goalsModal = await _datasource.getAllGoals();
      goals = goalsModal.map((goal) => GoalMapper.fromGoalModal(goal)).toList();
    } catch (e) {
      debugPrint(e.toString());
    }
    return goals;
  }
}
