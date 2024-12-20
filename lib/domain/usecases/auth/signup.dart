import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/usecase/usecase.dart';
import 'package:spotify_app/data/models/auth/create_user_model.dart';
import 'package:spotify_app/domain/repository/auth/auth_repository.dart';
import 'package:spotify_app/service_locator.dart';

class SignupUseCase implements Usecase<Either,CreateUserModel> {
  @override
  Future<Either> call({CreateUserModel ? params}) async {
    return sl<AuthRepository>().signup(params!);
  }
}