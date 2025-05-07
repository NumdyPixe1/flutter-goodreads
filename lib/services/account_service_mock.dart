import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/services/account_service.dart';

class AccountServiceMock extends GetxService implements AccountService {
  final _accessTokenKey = 'access_token';
  late FlutterSecureStorage _secureStorage;
  @override
  void onInit() {
    _secureStorage = Get.find();
    super.onInit();
  }

  @override
  Future<void> signUp(String fullName, String email, String password) async {
    await 3.delay();
    if (email != 'demo@hotmail.com') {
      throw 'Invalid email';
    }
    if (password != '123abc') {
      throw 'Invalid password';
    }
    await _secureStorage.write(
        key: _accessTokenKey, value: 'demo_access_token');
  }

  @override
  Future<void> signIn(String email, String password) async {
    await 3.delay();
    if (email != 'demo@hotmail.com' || password != '123abc') {
      throw 'Incorrect email or password';
    }
    await _secureStorage.write(
        key: _accessTokenKey, value: 'demo_access_token');
  }

  @override
  Future<bool> isSignedIn() async {
    await 3.delay();
    var token = await _secureStorage.read(key: _accessTokenKey);
    return token != null;
  }

  @override
  Future<void> signOut() async {
    await 3.delay();
    await _secureStorage.delete(key: _accessTokenKey);
  }
}
