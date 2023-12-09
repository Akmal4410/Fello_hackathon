import 'package:fello_hackathon/domain/entity/goal.dart';

abstract class IGoalRepo {
  Future<List<Goal>> getAllGoals();
}
