import 'package:startup_draft1/core/error/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteData {
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<String> loginWithEmailPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataImpl implements AuthRemoteData {
  final SupabaseClient supabaseClient;
  AuthRemoteDataImpl({required this.supabaseClient});

  @override
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth
          .signUp(email: email, password: password, data: {'name': name});
      if (response.user == null) {
        throw const ServerException('User is Null');
      }
      return response.user!.id;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<String> loginWithEmailPassword({
    required String email,
    required String password,
  }) {
    // TO DO: implement loginWithEmailPassword
    throw UnimplementedError();
  }
}
