import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my.message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://i.pinimg.com/474x/87/24/9b/87249bf91c51758fe01e13c14c1d2691.jpg'),
        ),
      ),
      title: Text('mi amor'), 
      centerTitle: false, 
      
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
           
           
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                return(index % 2 ==0)
                ? const HerMessageBubble()
                
                 :const MyMessageBubble();

              })),
            
            
            
            
            Text('mundo')
          ],
        ),
      ),
    );
  }
}