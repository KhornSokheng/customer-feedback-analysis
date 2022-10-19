
class User{
  User({
    this.userId,
    required this.username,
    this.companyName,
    required this.email,
    // this.password,
    this.userRole,
    this.userStatus
  });

  String? userId;
  String username;
  String email;
  String? companyName;
  String? userRole;
  // String? password;
  String? userStatus;

  void setID(String id){
    userId = id;
  }

  // to json method
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'username': username,
      'email': email,
      // 'password': password,
      'companyName' : companyName,
      'userRole' : userRole,
      'userStatus' : userStatus,


    };
  }

  //convert from json obj to User
  static User fromJson(Map<String, dynamic> json) => User(
      userId : json['userId'],
      username: json['username'],
      email: json['email'],
      // password: json['password'],
      companyName: json['companyName'],
      userRole: json['userRole'],
      userStatus: json['userStatus'],
  );




}