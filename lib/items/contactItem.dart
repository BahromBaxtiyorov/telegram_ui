

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/contactModel.dart';

Widget contactItem(BuildContext context,ContactModel contact){
  return Padding(padding: EdgeInsets.all(5),
    child: Container(
      height: MediaQuery.of(context).size.height*0.08,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: ClipOval(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: contact.image == null ?
                    ColoredBox(color: Colors.red,
                    child: Center(child: Text(contact.name[0],style: TextStyle(fontSize: 28,color: Colors.white),)),
                    ):
                    Image.asset(contact.image!,fit: BoxFit.cover)
              ),
            ),
          ),
          SizedBox(width: 5,),
          Column(
             children: [
               SizedBox(height:5,),
               Text(contact.name,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
               SizedBox(height: 10,width:10),
               Text(contact.isOnline ? "online" : contact.seen,
                 style: TextStyle(fontSize: 14,
                   color:contact.isOnline ?Colors.blue : Colors.white,
                   fontWeight: FontWeight.w500,),
               )
              ]
          ),
        ],
      ),

    )
  );
}