// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fello_hackathon/data/datasource/goal_datasource.dart' as _i3;
import 'package:fello_hackathon/data/datasource/signup_datasource.dart' as _i6;
import 'package:fello_hackathon/data/repository/goal_repo_impl.dart' as _i5;
import 'package:fello_hackathon/data/repository/signup_repo_impl.dart' as _i10;
import 'package:fello_hackathon/domain/repository/i_goal_repo.dart' as _i4;
import 'package:fello_hackathon/domain/repository/i_signup_repo.dart' as _i9;
import 'package:fello_hackathon/domain/use_case/get_goal.dart' as _i7;
import 'package:fello_hackathon/domain/use_case/get_signup.dart' as _i11;
import 'package:fello_hackathon/presentation/feature/home/home_bloc/home_bloc.dart'
    as _i8;
import 'package:fello_hackathon/presentation/feature/signup/signup_bloc/signup_bloc.dart'
    as _i12;
import 'package:fello_hackathon/presentation/feature/splash/splash_bloc/splash_bloc.dart'
    as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.GoalDatasource>(() => _i3.LocalDatasource());
    gh.lazySingleton<_i4.IGoalRepo>(
        () => _i5.GoalRepoImpl(gh<_i3.GoalDatasource>()));
    gh.lazySingleton<_i6.SignupDatasource>(() => _i6.LocalSignupDatasoucre());
    gh.lazySingleton<_i7.GetGoals>(() => _i7.GetGoalsImpl(gh<_i4.IGoalRepo>()));
    gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(gh<_i7.GetGoals>()));
    gh.lazySingleton<_i9.ISignupRepo>(
        () => _i10.SignupRepo(gh<_i6.SignupDatasource>()));
    gh.lazySingleton<_i11.GetSignup>(
        () => _i11.GetSignupImpl(gh<_i9.ISignupRepo>()));
    gh.factory<_i12.SignupBloc>(() => _i12.SignupBloc(gh<_i11.GetSignup>()));
    gh.factory<_i13.SplashBloc>(() => _i13.SplashBloc(gh<_i11.GetSignup>()));
    return this;
  }
}
