class UserModel {
  String? sId;
  String? fullname;
  String? email;
  String? password;
  String? phoneNumber;
  String? city;
  String? state;
  int? profileProgress;
  String? id;
  String? createdOn;
  String? updatedOn;

  UserModel(
      {this.sId,
      this.fullname,
      this.email,
      this.password,
      this.phoneNumber,
      this.city,
      this.state,
      this.profileProgress,
      this.id,
      this.createdOn,
      this.updatedOn});

  UserModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    fullname = json['fullname'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
    city = json['city'];
    state = json['state'];
    profileProgress = json['profileProgress'];
    id = json['id'];
    createdOn = json['createdOn'];
    updatedOn = json['updatedOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['_id'] = this.sId;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phoneNumber'] = this.phoneNumber;
    data['city'] = this.city;
    data['state'] = this.state;
    data['profileProgress'] = this.profileProgress;
    data['id'] = this.id;
    data['createdOn'] = this.createdOn;
    data['updatedOn'] = this.updatedOn;
    return data;
  }
}
