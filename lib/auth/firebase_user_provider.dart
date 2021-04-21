import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'firebase_user_provider.freezed.dart';

@freezed
abstract class MyDreamFirebaseUser implements _$MyDreamFirebaseUser {
  factory MyDreamFirebaseUser.user(User user) = _User;
  factory MyDreamFirebaseUser.loggedOut() = _LoggedOut;
  factory MyDreamFirebaseUser.initial() = _Initial;
}

bool loggedIn = false;

final myDreamFirebaseUser = FirebaseAuth.instance
    .userChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<MyDreamFirebaseUser>((user) {
  loggedIn = user != null;
  return user != null
      ? MyDreamFirebaseUser.user(user)
      : MyDreamFirebaseUser.loggedOut();
}).shareValueSeeded(MyDreamFirebaseUser.initial());

MyDreamFirebaseUser get currentUser => myDreamFirebaseUser.value;
