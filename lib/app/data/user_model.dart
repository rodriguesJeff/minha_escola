/*class UserModel {
  Data data;

  UserModel({this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}*/

class Data {
  String sId;
  String firstname;
  String lastname;
  String mat;
  String pass;
  String schoolName;
  String parentEmail;
  String className;
  int iV;

  Data(
      {this.sId,
      this.firstname,
      this.lastname,
      this.mat,
      this.pass,
      this.schoolName,
      this.parentEmail,
      this.className,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    mat = json['mat'];
    pass = json['pass'];
    schoolName = json['school_name'];
    parentEmail = json['parent_email'];
    className = json['class_name'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['mat'] = this.mat;
    data['pass'] = this.pass;
    data['school_name'] = this.schoolName;
    data['parent_email'] = this.parentEmail;
    data['class_name'] = this.className;
    data['__v'] = this.iV;
    return data;
  }
}
