import 'package:bloc/bloc.dart';
import 'package:fello_hackathon/domain/entity/goal.dart';
import 'package:fello_hackathon/domain/use_case/get_goal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetGoals _getGoals;
  HomeBloc(this._getGoals) : super(HomeState.initial()) {
    on<_GetAllGoals>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          goalList: state.goalList,
        ),
      );

      final goalList = await _getGoals.getAllGoals();

      emit(
        state.copyWith(
          isLoading: false,
          goalList: goalList,
        ),
      );
    });
  }
}
