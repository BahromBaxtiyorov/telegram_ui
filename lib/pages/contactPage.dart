import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../attributes.dart';
import '../items/contactItem.dart';
import '../models/contactModel.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  @override
  void initState(){
    contactList.sort((a,b)=> a.seen.compareTo(b.seen));
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: isClicked ?
            TextFormField(
              onChanged: (user){
                searchedUsers(user);
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: "Search Contact",
                hintStyle: TextStyle(color: Colors.white)
              ),
            )
        : Text("New Message"),
        actions: [
          InkWell(
            onTap: (){
              isClicked = !isClicked;
              setState(() {});
          },
              child: Icon(Icons.search)),
          SizedBox(width: 15,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Stack(
              children: [
                Icon(Icons.sort),
                Positioned(
                  bottom:0,
                  right:0,
                  child: Text("A",
                  style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w800)),
                )
              ],
            ),
          ),
          SizedBox(width: 10,),
        ],
      ),
      body:isClicked
          ? ListView.builder(
        itemCount: searchList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return contactItem(context, searchList[index]);
        },
      )
          : SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.group,color: Colors.white),
                SizedBox(width: 20,),
                Text("New Group",style: TextStyle(color: Colors.white))
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(CupertinoIcons.lock,color: Colors.white),
                SizedBox(width: 20,),
                Text("New Secret Chat",style: TextStyle(color: Colors.white))
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(CupertinoIcons.speaker_2_fill,color: Colors.white),
                SizedBox(width: 20,),
                Text("New Group",style: TextStyle(color: Colors.white))
              ],
            ),

            SizedBox(height: 10,),
            Divider(thickness: 5,),
            SizedBox(height: 10,),
            SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                itemCount: contactList.length,
                  itemBuilder: (context,index){
                    return contactItem(context,contactList[index],);
                  },
                ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context,"/AddContactPage");
          },
          child: Icon(Icons.person_add_alt_1)
      ),
    );
  }
}
void searchedUsers(String user) {
  searchList.clear();
  contactList.forEach((element) {
    if (element.name.toLowerCase().contains(user.toLowerCase())) {
      searchList.add(element);
    }
  });
}