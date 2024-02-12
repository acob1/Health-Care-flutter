import 'user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final String mymoney;
  final String dateme;
  final bool isLiked;
  final bool isRecieved;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.mymoney,
    required this.isLiked,
    required this.isRecieved,
    required this.dateme,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'images/greg.jpg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: 'images/greg.jpg',
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'images/james.jpg',
);
final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'images/john.jpg',
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'images/olivia.jpg',
);
final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'images/sam.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'images/sophia.jpg',
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'images/steven.jpg',
);
// ignore: non_constant_identifier_names
final User Sweartagawd = User(
  id: 8,
  name: 'Sweartagawd',
  imageUrl: 'images/john.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sam, Sweartagawd, steven, olivia, john, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: sam,
    time: '5:55 PM',
    mymoney: '+500.00',
    dateme: 'July-08-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: john,
    time: '5:40 PM',
    mymoney: '-243.00',
    dateme: 'July-07-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRecieved: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '5:30 PM',
    mymoney: '+1,043.00',
    dateme: 'June-09-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    mymoney: '-100.00',
    dateme: 'July-06-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRecieved: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    mymoney: '+243.90',
    dateme: 'July-03-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRecieved: true,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    mymoney: '-2,043.00',
    dateme: 'July-19-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRecieved: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    mymoney: '+7,243.00',
    dateme: 'June-08-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRecieved: true,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    mymoney: '+443.00',
    dateme: 'June-07-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRecieved: true,
    unread: false,
  ),
  Message(
    sender: Sweartagawd,
    time: '12:49 PM',
    mymoney: '+7,743.00',
    dateme: 'June-06-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRecieved: true,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    mymoney: '+543.00',
    dateme: 'June-05-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRecieved: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    mymoney: '-443.00',
    dateme: 'June-04-1:12AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    isRecieved: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    mymoney: '-243.00',
    dateme: 'June-03-1:12AM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    isRecieved: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    mymoney: '+243.00',
    dateme: 'June-02-1:12AM',
    text: 'How\'s the doggo?',
    isLiked: false,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    mymoney: '+243.00',
    dateme: 'June-01-1:12AM',
    text: 'All the food',
    isLiked: true,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    mymoney: '+243.00',
    dateme: 'June-26-1:12AM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    mymoney: '+243.00',
    dateme: 'June-25-1:12AM',
    text: 'I ate so much food today.',
    isLiked: false,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '1:50 PM',
    mymoney: '+243.00',
    dateme: 'June-24-1:12AM',
    text: 'So tomorrow will you be available?',
    isLiked: true,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: Sweartagawd,
    time: '1:30 PM',
    mymoney: '+243.00',
    dateme: 'June-22-1:12AM',
    text: 'I don\'t really know, let\'s wait and see what will happen',
    isLiked: false,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '1:00 PM',
    mymoney: '+243.00',
    dateme: 'June-21-1:12AM',
    text: 'So tomorrow will you be available?',
    isLiked: true,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: Sweartagawd,
    time: '12:53 PM',
    mymoney: '+243.00',
    dateme: 'June-29-1:12AM',
    text: 'I don\'t really know, let\'s wait and see what will happen',
    isLiked: false,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '12:20 PM',
    mymoney: '+243.00',
    dateme: 'June-19-1:12AM',
    text: 'So tomorrow will you be available?',
    isLiked: true,
    isRecieved: true,
    unread: true,
  ),
  Message(
    sender: james,
    time: '12:00 PM',
    mymoney: '+243.00',
    dateme: 'July-09-1:12AM',
    text: 'I don\'t really know, let\'s wait and see what will happen',
    isLiked: false,
    isRecieved: true,
    unread: true,
  ),
];
