import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
class Auth{
  final FirebaseAuth_firebaseAuth=FirebaseAuth.instance;
  User? get currentUser=>_firebaseAuth.currentUser;
  Stream<User?>get authStateChanges=>_firebaseAuth.authStateChanges();
   Future signUp({String email, String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
 