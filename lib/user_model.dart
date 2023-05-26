class UserModel {
  String? fullName;
  String? emailAddress;
  String? address;
  List<String>? skills;
  List<String>? users;

  UserModel(
      {this.fullName,
      this.emailAddress,
      this.address,
      this.skills,
      this.users});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['fullName'] = fullName;
    data['emailAdress'] = emailAddress;
    data['adress'] = address;
    data['skills'] = skills;
    data['users'] = users;

    return data;
  }
}
