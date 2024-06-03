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

  UserModel({
    this.sId,
    this.fullname,
    this.email,
    this.password,
    this.phoneNumber,
    this.city,
    this.state,
    this.profileProgress,
    this.id,
    this.createdOn,
    this.updatedOn,
  });

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
    final Map<String, dynamic> data = <String, dynamic>{};

    data['_id'] = sId;
    data['fullname'] = fullname;
    data['email'] = email;
    data['password'] = password;
    data['phoneNumber'] = phoneNumber;
    data['city'] = city;
    data['state'] = state;
    data['profileProgress'] = profileProgress;
    data['id'] = id;
    data['createdOn'] = createdOn;
    data['updatedOn'] = updatedOn;
    return data;
  }
}
