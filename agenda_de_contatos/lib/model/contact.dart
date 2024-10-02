class Contact {
  int? id;
  String name;
  String lastName;
  String phone;
  String email;
  bool isFavorite;
  Contact({
    this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.isFavorite,
  });

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'lastname': lastName,
      'phone': phone,
      'email': email,
      'isFavorite': (isFavorite) ? 1 : 0,
    };
  }

  factory Contact.fromMap(Map<String, Object?> map) {
    return Contact(
      id: map['id'] as int,
      name: map['name'] as String,
      lastName: map['lastname'] as String,
      phone: map['phone'] as String,
      email: map['email'] as String,
      isFavorite: map['isFavorite'] == 1,
    );
  }
}
