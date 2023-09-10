import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // const url =
    //  'https://images-stylist.s3-eu-west-1.amazonaws.com/app/uploads/2019/09/11115601/jennifer-aniston-crop-1568199404-896x896.jpg';
    return _Scaffold();
  }
}

class _Scaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images-stylist.s3-eu-west-1.amazonaws.com/app/uploads/2019/09/11115601/jennifer-aniston-crop-1568199404-896x896.jpg'),
          ),
        ),
        title: const Text('Mi Amor'),
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
                      //return Text('Indice: $index');
                      return (index % 2 == 0)
                          ? const MyMessageBubble()
                          : const HerMessageBubble();
                    })),

            // caja de texto
            const MessageFieldBox(),
            //const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
