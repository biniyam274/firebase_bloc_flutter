import 'dart:async';
import 'package:cache/cache.dart';
import 'package:user_repository/user_repository.dart';
import 'package:meta/meta.dart';

abstract class AuthenticationRepository {
  AuthenticationRepository({CacheClient? cache});
  @visibleForTesting
  static const userCacheKey = '__user_cache_key__';
  Stream<User> get user;
  User get currentUser;
  Future<void> signUp({required String email, required String password});
  Future<void> logInWithGoogle();
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> logOut();
}
