abstract class AccountService {
  Future<void> signUp(
    String fullName,
    String email,
    String password,
  );

  Future<void> signIn(String email, String password);
  Future<void> signInAuto();

  Future<bool> isSignedIn();
  Future<void> signOut();
}
