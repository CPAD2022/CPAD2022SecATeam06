import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CPADtrail1FirebaseUser {
  CPADtrail1FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CPADtrail1FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CPADtrail1FirebaseUser> cPADtrail1FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CPADtrail1FirebaseUser>(
      (user) {
        currentUser = CPADtrail1FirebaseUser(user);
        return currentUser!;
      },
    );
