import 'package:flutter/cupertino.dart';

import '../attributes.dart';
import '../items/chatItem.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:chatList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,int index){
          return chatItem(context, chatList[index]);
        });
  }
}
