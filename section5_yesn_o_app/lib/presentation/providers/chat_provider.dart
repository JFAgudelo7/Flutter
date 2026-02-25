import 'package:flutter/material.dart';
import 'package:section5_yesn_o_app/config/helpers/get_yes_no_answer.dart';
import 'package:section5_yesn_o_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: "Hi, how are you?", fromWho: FromWho.me),
    Message(text: "Are you already in home?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage( String text ) async{

    if (text.isEmpty) return;
    
    final newMwessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMwessage);

    if (text.endsWith('?')){
      herReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herReply() async{
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {

    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: Duration (milliseconds: 300),
      curve: Curves.easeOut
    );
  }
}