import 'package:flutter/material.dart';
import '../models/message_model.dart';
import '../models/user_model.dart';

class ChatScreen extends StatefulWidget {
  //const ChatScreen({Key? key}) : super(key: key);

  final User user;

  const ChatScreen({super.key, required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _builderMessage(Message message, bool isMe){
    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      margin: isMe
          ? const EdgeInsets.only(top: 8, bottom: 8, left: 80)
          : const EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isMe
              ? const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)
          )
              :  const BorderRadius.only(
              topRight: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0)
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: const TextStyle(
                color: Colors.black38,
                fontSize: 14.0,
                fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 5),
          Text(
            message.text,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              //fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
    if (isMe){
      return msg;
    }
    return Row(
      children: [
        msg,
        IconButton(
          icon: message.isLiked
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_border),
          iconSize: 30.0,
          color:  message.isLiked
              ? Theme.of(context).primaryColor
              : Colors.blueGrey,
          onPressed: () {},
        )
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.emoji_emotions_outlined),
              color: Colors.black12,
          ),
          const Expanded(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                //onChanged: (value){},
                decoration: InputDecoration.collapsed(
                  hintText: 'Type a message'
                ),
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
            color: Colors.black12,
          )
        ],
      ),
    );
  }

  _goBack(BuildContext context){
    Navigator.pop(context);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {
            _goBack(context);
          },
        ),
        title: Text(
          widget.user.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 26.0,
            //fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)
                  )
                ),
               child: ClipRRect(
                 borderRadius: const BorderRadius.only(
                     topRight: Radius.circular(30.0),
                     topLeft: Radius.circular(30.0)
                 ),
                 child: ListView.builder(
                   itemCount: messages.length,
                   itemBuilder: (BuildContext context, int index) {
                     final message = messages[index];
                     return _builderMessage(message, message.sender.id == currentUser.id);
                   },
                 ),
               ),
              ),
            ),
            _buildMessageComposer()
          ],
        ),
      ),
    );
  }
}

