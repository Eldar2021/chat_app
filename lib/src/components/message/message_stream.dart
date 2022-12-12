import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class MessagesStream extends StatelessWidget {
  const MessagesStream(
    this.streamMessages, {
    Key? key,
  }) : super(key: key);

  final Stream<QuerySnapshot<Map<String, dynamic>>> streamMessages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color.fromARGB(255, 222, 220, 143),
        child: StreamBuilder<QuerySnapshot>(
          stream: streamMessages,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              final messages = snapshot.data.docs.reversed as Iterable;
              final widgets = messages.map((e) => Text(e.data()['sms'])).toList();
              return ListView(
                children: widgets,
              );
            } else {
              return const Center(child: CupertinoActivityIndicator());
            }
          },
        ),
      ),
    );
  }
}
