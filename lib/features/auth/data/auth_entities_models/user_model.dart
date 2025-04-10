import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String userName;
  final String userEmail;
  final String userID;
  UserModel({
    required this.userName,
    required this.userEmail,
    required this.userID,
  });

  factory UserModel.fromFireStore(User user) {
    return UserModel(
      userName: user.displayName ?? '',
      userEmail: user.email ?? '',
      userID: user.uid,
    );
  }

  Map<String, dynamic> toFireStore() {
    return {
      'userName': userName,
      'userEmail': userEmail,
      'userID': userID,
    };
  }
}
