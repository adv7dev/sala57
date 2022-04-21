import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Sala57FirebaseUser {
  Sala57FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

Sala57FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Sala57FirebaseUser> sala57FirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<Sala57FirebaseUser>((user) => currentUser = Sala57FirebaseUser(user));
