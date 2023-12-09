import 'package:injectable/injectable.dart';

abstract class SignupDatasource {}

@LazySingleton(as: SignupDatasource)
class LocalSignupDatasoucre extends SignupDatasource {}
