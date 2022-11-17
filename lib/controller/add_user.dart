class AddUser {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;

  AddUser({this.uid, this.email, this.firstName, this.lastName});

  // data from server
  factory AddUser.fromMap(map) {
    return AddUser(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
    );
  }

  // sending data to sever
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'lastName': lastName ,
    };
  }
}
