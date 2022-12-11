abstract class AuthDataSource {
 void createUserWithEmailAndPassword();
}


class LocalDataSource implements AuthDataSource{
  @override
  void createUserWithEmailAndPassword() {
    // TODO: implement createUserWithEmailAndPassword
  }
}


class RemoteDataSource implements AuthDataSource{
  @override
  void createUserWithEmailAndPassword() {
    // TODO: implement createUserWithEmailAndPassword
  }
}

class FireBaesDataSource implements AuthDataSource{
  @override
  void createUserWithEmailAndPassword() {
    // TODO: implement createUserWithEmailAndPassword
  }
}
