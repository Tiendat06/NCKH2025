class UserModel{
  final String id;
  final String name;
  final String phone;
  final String email;

  UserModel({required this.id, required this.name, required this.email, required this.phone});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'UserModel(id: $id, name: $name, phone: $phone, email: $email)';
  }

}