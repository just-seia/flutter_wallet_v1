class Users {
  String? userId;
  String? userFullname;
  String? userTelegramId;
  String? userEmail;
  String? userPassword;
  String? userImg;
  String? userRoleId;

  Users({
    this.userId,
    this.userFullname,
    this.userTelegramId,
    this.userEmail,
    this.userPassword,
    this.userImg,
    this.userRoleId,
  });

  Users.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userFullname = json['user_fullname'];
    userTelegramId = json['user_telegram_id'];
    userEmail = json['user_email'];
    userPassword = json['user_password'];
    userImg = json['user_img'];
    userRoleId = json['user_role_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_fullname'] = this.userFullname;
    data['user_telegram_id'] = this.userTelegramId;
    data['user_email'] = this.userEmail;
    data['user_password'] = this.userPassword;
    data['user_img'] = this.userImg;
    data['user_role_id'] = this.userRoleId;
    return data;
  }
}
