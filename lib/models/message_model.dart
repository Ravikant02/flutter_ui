import 'package:flutter_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLinked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLinked,
    required this.unread
  });
}

final User currentUser = User(
    id: 0,
    name: "Ravikant",
    imageUrl: "sdfdf"
);

final User priya = User(
  id: 1,
  name: 'Priya',
  imageUrl: 'assets/images/priya.jpg'
);

final User reyansh = User(
    id: 2,
    name: 'Reyansh',
    imageUrl: "assets/images/reyansh.jpg"
);

final User shaurya = User(
    id: 3,
    name: 'Shaurya',
    imageUrl: "assets/images/shaurya.jpg"
);

final User amit = User(
    id: 4,
    name: 'Amit',
    imageUrl: "assets/images/amit.jpg"
);

final User vijay = User(
    id: 5,
    name: 'Vijay',
    imageUrl: "assets/images/vijay.jpg"
);

// Favorite contacts
List<User> favorites = [priya, reyansh, shaurya, amit, vijay];