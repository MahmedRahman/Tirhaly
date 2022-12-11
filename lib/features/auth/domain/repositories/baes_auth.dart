import 'package:thrhaly/core/enumerated/enumerated.dart';

abstract class BaesAuthRepositories {
  Future<AuthStatus> authState();

  Future<AuthStatus> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<AuthStatus> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  void signInWithGoogle();
  void SignInWithTwitter();
  void SignInWithApple();

  void signOut();

  void sendPasswordResetEmail(String Email);

  void ResendPasswordEmail(String Email);

  void PasswordEmailVerification(String PinCode);

  void changePassword(String oldPassword, String newPassword);
}
