import 'package:thrhaly/core/enumerated/enumerated.dart';
import 'package:thrhaly/features/auth/data/datasources/auth_data_sources.dart';
import 'package:thrhaly/features/auth/domain/repositories/baes_auth.dart';

class AuthRepositories implements BaesAuthRepositories {
  AuthDataSource authDataSource;

  AuthRepositories(this.authDataSource);

  @override
  Future<AuthStatus> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  void PasswordEmailVerification(String PinCode) {
    // TODO: implement PasswordEmailVerification
  }

  @override
  void ResendPasswordEmail(String Email) {
    // TODO: implement ResendPasswordEmail
  }

  @override
  void SignInWithApple() {
    // TODO: implement SignInWithApple
  }

  @override
  void SignInWithTwitter() {
    // TODO: implement SignInWithTwitter
  }

  @override
  Future<AuthStatus> authState() {
    // TODO: implement authState
    throw UnimplementedError();
  }

  @override
  void changePassword(String oldPassword, String newPassword) {
    // TODO: implement changePassword
  }

  @override
  void sendPasswordResetEmail(String Email) {
    // TODO: implement sendPasswordResetEmail
  }

  @override
  Future<AuthStatus> signInWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  void signInWithGoogle() {
    // TODO: implement signInWithGoogle
  }

  @override
  void signOut() {
    // TODO: implement signOut
  }
}
