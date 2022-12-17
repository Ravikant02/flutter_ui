import 'package:flutter_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
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

final User ajay = User(
    id: 6,
    name: 'Ajay',
    imageUrl: "assets/images/ajay.jpg"
);

final User smith = User(
    id: 7,
    name: 'Smith',
    imageUrl: "assets/images/smith.jpg"
);

final User rahul = User(
    id: 8,
    name: 'Rahul',
    imageUrl: "assets/images/rahul.jpg"
);

final User uday = User(
    id: 6,
    name: 'Ujay',
    imageUrl: "assets/images/uday.jpg"
);

// Favorite contacts
List<User> favorites = [priya, reyansh, shaurya, amit, vijay, ajay];

List<Message> chats = [
  Message(sender: smith, time: '5:30 AM', text: 'How are you? What are you doing?', isLiked: false, unread: true),
  Message(sender: priya, time: '3:00 PM', text: 'How are you?', isLiked: false, unread: false),
  Message(sender: ajay, time: '6:27 AM', text: 'How are you? What are you doing?', isLiked: false, unread: false),
  Message(sender: reyansh, time: '1:30 PM', text: 'How are you?', isLiked: false, unread: false),
  Message(sender: uday, time: '2:30 PM', text: 'How are you? What are you doing?', isLiked: false, unread: true),
  Message(sender: amit, time: '4:30 PM', text: 'How are you?', isLiked: false, unread: false),
  Message(sender: vijay, time: '12:30 PM', text: 'How are you?', isLiked: false, unread: false),
  Message(sender: shaurya, time: '9:30 PM', text: 'How are you?', isLiked: false, unread: false),
  Message(sender: rahul, time: '11:30 AM', text: 'How are you? What are you doing?', isLiked: false, unread: true),
];

List<Message> messages = [
  Message(sender: priya, time: '5:30 PM', text: 'How are you? What are you doing?', isLiked: false, unread: true),
  Message(sender: currentUser, time: '5:30 PM', text: 'I am fine thank you', isLiked: false, unread: true),
  Message(sender: reyansh, time: '1:30 PM', text: 'How are you?', isLiked: false, unread: false),
  Message(sender: amit, time: '4:30 PM', text: 'How are you?', isLiked: false, unread: false),
  Message(sender: vijay, time: '12:30 PM', text: 'How are you?', isLiked: false, unread: true),
  Message(sender: shaurya, time: '9:30 PM', text: 'How are you?', isLiked: false, unread: true),
];