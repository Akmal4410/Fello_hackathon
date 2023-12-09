import 'package:fello_hackathon/data/models/goal_model.dart';
import 'package:fello_hackathon/utils/configure_hive_db.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class GoalDatasource {
  Future<List<GoalModel>> getAllGoals();
}

@LazySingleton(as: GoalDatasource)
class LocalDatasource extends GoalDatasource {
  @override
  Future<List<GoalModel>> getAllGoals() async {
    List<GoalModel> goals = [];
    try {
      final goalBox = MyLocalDB.getGoalBox();
      goals = goalBox.values.toList();
    } catch (e) {
      debugPrint(e.toString());
    }
    return goals;
  }
}
