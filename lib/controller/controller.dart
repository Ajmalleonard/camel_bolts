// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthController {
  String UserID = '';
  var VerID = '';
  int? ResendTokenID;
  bool phoneAuthCheck = false;
  dynamic credentials;

  phoneAuth(String phone) async {
    try {
      credentials = null;
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: phone,
          timeout: const Duration(seconds: 60),
          verificationCompleted: (PhoneAuthCredential credential) async {
            log('Completed' as num);
            credentials = credential;
            await FirebaseAuth.instance.signInWithCredential(credential);
          },
          forceResendingToken: ResendTokenID,
          verificationFailed: (FirebaseAuthException e) {
            log('Failed' as num);
            if (e.code == 'invalid-phone-number') {
              debugPrint('The provide phone number is not valid.');
            }
          },
          codeSent: (String verificationId, int? resendToken) async {
            log('Code sent' as num);
            VerID = verificationId;
            ResendTokenID = resendToken;
          },
          codeAutoRetrievalTimeout: (String vefificationId) {});
    } catch (e) {
      log('Error Occured $e' as num);
    }
  }
}
