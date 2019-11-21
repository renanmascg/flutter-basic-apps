import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat_app/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final Firestore _firestore = Firestore.instance;

class ChatScreen extends StatefulWidget {

  static const String id = 'chat_screen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final messageTextController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;
  String messageText;

  @override
  void initState() {
    super.initState();

    getCurrentUser();

  }

  void getCurrentUser() async {
    try{
      final FirebaseUser user = await _auth.currentUser();
    
      if( user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (err) {
      print(err);
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessagesStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageTextController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      messageTextController.clear();
                      _firestore.collection('/messages').add({
                        'sender': loggedInUser.email,
                        'text': messageText
                      });
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('messages').snapshots(),
      builder: (context, snapshot) {
        if(!snapshot.hasData) {
          return Expanded(
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.lightBlueAccent,
              ),
            ),
          );
        }
        final messages = snapshot.data.documents;

          List<MessageBubble> messageBubbles = [];

          for(var message in messages) {
            final messageText = message.data['text'];
            final messageSender = message.data['sender'];

            final MessageBubble messageBubble = MessageBubble(
              text: messageText,
              sender: messageSender,
            );
            messageBubbles.add(messageBubble);
          }

          return Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              children: messageBubbles,
            ),
          );
      },
    );
  }
}

class MessageBubble extends StatelessWidget {

  MessageBubble({ this.sender, this.text});
  
  final String sender;
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            sender,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54
            ),
          ),
          Material(
            borderRadius: BorderRadius.circular(30.0),
            elevation: 5.0,
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}