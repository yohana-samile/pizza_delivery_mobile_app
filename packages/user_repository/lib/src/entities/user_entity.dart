class MyUserEntity {
  String userId;
  String name;
  String email;
  bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.name,
    required this.email,
    required this.hasActiveCart,
  });

  Map<String, Object?> toDocument() {
    return {
      'userid': userId,
      'name': name,
      'email': email,
      'hasActiveCart': hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc){
    return MyUserEntity(
      userId: doc['userId'] ?? '',
      name: doc['name'] ?? '',
      email: doc['email'] ?? '',
      hasActiveCart: doc['hasActiveCart'] ?? false,
    );
  }
}