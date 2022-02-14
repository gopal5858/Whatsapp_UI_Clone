import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  static const styleSender = BubbleStyle(
    margin: const BubbleEdges.only(top: 2),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
    showNip: false,
      );
  static const styleReciver = BubbleStyle(
    margin: const BubbleEdges.only(top: 2),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: const Color.fromRGBO(225, 255, 199, 1),
    showNip: false,
  );
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
    return ListView(
      controller: _scrollController,
      children: [
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1),
          child: const Text('TODAY',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11)),
        ),
        Bubble(
          style: styleReciver,
          showNip: true,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReciver,
          showNip: true,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReciver,
          showNip: true,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReciver,
          showNip: true,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReciver,
          showNip: true,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReciver,
          showNip: true,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReciver,
          showNip: true,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReciver,
          showNip: true,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
      ],
    );
  }
}
