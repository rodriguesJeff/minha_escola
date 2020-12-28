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
}
