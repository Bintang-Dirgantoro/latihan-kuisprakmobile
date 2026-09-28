class User {
  final String username;
  final String password;
  final String name;

  User({
    required this.username,
    required this.password,
    required this.name,
  });
}

// Dummy Database User
List<User> userList = [
  User(username: 'admin', password: '123', name: 'Administrator'),
  User(username: 'budi', password: '456', name: 'Budi Santoso'),
  User(username: 'user', password: '123', name: 'Pengguna Biasa'),
];