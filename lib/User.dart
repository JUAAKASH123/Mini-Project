class User {
  final String email;
  final String username;
  final String password;

  User({required this.email, required this.username, required this.password});
}

// Mock user list to store registered users (In-memory storage)
List<User> registeredUsers = [];
