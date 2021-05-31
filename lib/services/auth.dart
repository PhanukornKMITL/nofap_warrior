import 'package:firebase_auth/firebase_auth.dart';
import 'package:nofap_warriors/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser _userFromFirebaseUser(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<MyUser> get user {
    return _auth
        .authStateChanges()
        //.map((User user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

  // register in with emial & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
        UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        User user = result.user;

        //create a new document 
        //await DatabaseService(uid: user.uid).updateUserData('0', 'new crew member', 100);
        return _userFromFirebaseUser(user);
    } catch (e){
        print(e.toString());
        return null;
    }
  }

  // sign in with emial & password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
        UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
        User user = result.user;
        return _userFromFirebaseUser(user);
    } catch (e){
        print(e.toString());
        return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
