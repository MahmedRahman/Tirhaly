import 'package:thrhaly/core/enumerated/enumerated.dart';
import 'package:thrhaly/features/auth/domain/repositories/baes_auth.dart';

class SignInWithEmailUseCase {
  BaesAuthRepositories baesAuthRepositories;
  SignInWithEmailUseCase(this.baesAuthRepositories);
  Future<AuthStatus> execute({
    required String email,
    required String password,
  }) {
    return baesAuthRepositories.signInWithEmailAndPassword(email: email, password: password);
  }
}
