import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/chatModel.dart';

Widget chatItem(BuildContext context,ChatModel item) {

  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         SizedBox(
           height: 65,
           width: 65,
           child: ClipOval(
             child: Image.asset(item.image,
             fit: BoxFit.cover,
             ),
           ),
          ),
          SizedBox(width: 10,),
          Column(
            children: [
              Text(item.name,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              SizedBox(height: 20,),
              Row(children: [
                Text(item.lastMessage,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
              ],
              ),
            ],
          ),
          SizedBox(width: 140,),
          Text(item.time,
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
        ],
        )
      ),
    ),
  );
}