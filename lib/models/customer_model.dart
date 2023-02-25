class CustomerModel {
  final String code;
  final String name;
  final String email;
  final String phone;

  CustomerModel({
    required this.code,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      code: json['code'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      'email': email,
      'phone': phone,
    };
  }
}
