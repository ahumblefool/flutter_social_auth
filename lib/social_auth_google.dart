import 'package:flutter/material.dart';
import 'package:flutter_social_auth/log_utils.dart';
import 'package:google_sign_in/google_sign_in.dart';

void googleSignIn(BuildContext buildContext) async {
  GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  String? token = googleAuth?.idToken;
  LogUtils.showLog("token - " + token!);
  LogUtils.showLog("Display Name - " + googleUser!.displayName!);
  LogUtils.showLog("Email - " + googleUser.email);
  LogUtils.showLog("Photo Url - " + googleUser.photoUrl!);
  LogUtils.showLog("Google Id - " + googleUser.id);
}