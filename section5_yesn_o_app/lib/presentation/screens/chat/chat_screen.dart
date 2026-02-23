import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section5_yesn_o_app/domain/entities/message.dart';
import 'package:section5_yesn_o_app/presentation/providers/chat_provider.dart';
import 'package:section5_yesn_o_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:section5_yesn_o_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:section5_yesn_o_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.seeklogo.com/logo-png/25/1/s-h-i-e-l-d-logo-png_seeklogo-257821.png',
            ),
          ),
        ),
        title: const Text('S.H.I.E.L.D.'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                /*itemCount: 100,
                itemBuilder: (context, index) {                  
                  return ( index % 2 == 1)
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
                }*/
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {   
                  final message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.hers)
                    ? const HerMessageBubble()
                    : MyMessageBubble(message: message);               
                  
                }
              ),
            ),
            MessageFieldBox(
              //onValue: (value) => chatProvider.sendMessage(value), // Cuando el número de argumentos a la izquierda es el mismo que se enviará a la derecha, se puede simplificar en la forma de abajo:
              onValue: chatProvider.sendMessage,
            ),
            ],
        ),
      ),
    );
  }
}
