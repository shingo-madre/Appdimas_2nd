import 'package:flutter/material.dart';

enum ChatMessageType { text, image }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    this.text = '',
    @required this.messageType,
    @required this.messageStatus,
    @required this.isSender,
  });
}

List demeChatMessages = [
  ChatMessage(
    text: "Halo Ya opo?,",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Loh Ya opo??",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  // ChatMessage(
  //   text: "Ya opo seh",
  //   messageType: ChatMessageType.text,
  //   messageStatus: MessageStatus.not_sent,
  //   isSender: true,
  // ),
  ChatMessage(
    text: "Ya opo terusan",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
];
