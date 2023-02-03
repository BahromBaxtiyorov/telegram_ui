import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/pages/privatePage.dart';

import 'allPage.dart';
import 'botsPage.dart';
import 'channelPage.dart';
import 'groupsPage.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with SingleTickerProviderStateMixin {
  late TabController _tabController;



  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
       child: Container(
        child:  Column(
            children: [
              Container(
                color: Colors.blue,
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,top:40,right:5,bottom: 5),
                    child: Row(
                    children: [
                          Icon(Icons.turn_left,color: Colors.white,size: 25),
                       SizedBox(width: 10),
                       SizedBox(
                         height: 60,
                         width: 60,
                         child: ClipOval(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset("assets/images/i (10).webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                      ),
                       ),
                      SizedBox(height: 12,width: 6,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text("Elon Musk",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600)),
                          SizedBox(height: 15,),
                          Text("online",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300)),
                        ],
                      ),
                      SizedBox(width:45),
                      Icon(Icons.search,color: Colors.white,size: 25),
                      SizedBox(width:10),
                      Icon(Icons.more_horiz,color: Colors.white,size: 25)
                    ]
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Text("Account",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700,fontSize: 15)),
                    SizedBox(height: 8,),
                    Text("+998 888888888",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15)),
                    SizedBox(height: 5,),
                    Text("Tap to change phone number",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200,fontSize: 13)),
                    Divider(thickness: 1,color: Colors.grey.shade300,),
                    SizedBox(height: 8,),
                    Text("@Tesla",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15)),
                    SizedBox(height: 5,),
                    Text("Username",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200,fontSize: 13)),
                    Divider(thickness: 1,color: Colors.grey.shade300,),
                    SizedBox(height: 8,),
                    Text("Bio",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15)),
                    SizedBox(height: 5,),
                    Text("Add a few words about yourself",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200,fontSize: 13)),
                    SizedBox(height: 5,),
                    Divider(thickness: 15,color: Colors.grey.shade200,),
                    SizedBox(height: 5,),
                    Text("Settings",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700,fontSize: 15)),
                    SizedBox(height: 8,),
                    Row(children: [
                      Icon(Icons.notifications,color: Colors.grey,size: 25,),
                      SizedBox(width: 20,),
                      Text("Notifications and sounds",style: TextStyle(color:Colors.grey,fontSize:17))
                    ],),
                    SizedBox(height: 5,),
                    Divider(thickness: 1,color: Colors.grey.shade300,),
                    Row(children: [
                      Icon(Icons.lock,color: Colors.grey,size: 25,),
                      SizedBox(width: 20,),
                      Text("Privacy and Security",style: TextStyle(color:Colors.grey,fontSize:17))
                    ],),
                    SizedBox(height: 5,),
                    Divider(thickness: 1,color: Colors.grey.shade300,),
                    Row(children: [
                      Icon(Icons.access_time,color: Colors.grey,size: 25,),
                      SizedBox(width: 20,),
                      Text("Date and Storage",style: TextStyle(color:Colors.grey,fontSize:17))
                    ],),
                    SizedBox(height: 5,),
                    Divider(thickness: 1,color: Colors.grey.shade300,),
                    Row(children: [
                      Icon(Icons.chat_bubble_outline,color: Colors.grey,size: 25,),
                      SizedBox(width: 20,),
                      Text("Chat settings",style: TextStyle(color:Colors.grey,fontSize:17))
                    ],),
                    SizedBox(height: 5,),
                    Divider(thickness: 1,color: Colors.grey.shade300,),
                    Row(children: [
                      Icon(Icons.sticky_note_2_outlined,color: Colors.grey,size: 25,),
                      SizedBox(width: 20,),
                      Text("Stickers and emoji",style: TextStyle(color:Colors.grey,fontSize:17))
                    ],),
                    SizedBox(height: 5,),
                    Divider(thickness: 1,color: Colors.grey.shade300,),
                    Row(children: [
                      Icon(Icons.folder,color: Colors.grey,size: 25,),
                      SizedBox(width: 20,),
                      Text("Chat Folders",style: TextStyle(color:Colors.grey,fontSize:17))
                    ],),
                    SizedBox(height: 5,),
                    Divider(thickness: 1,color: Colors.grey.shade300,),
                    Row(children: [
                      Icon(Icons.devices_outlined,color: Colors.grey,size: 25,),
                      SizedBox(width: 20,),
                      Text("Devices",style: TextStyle(color:Colors.grey,fontSize:17))
                    ],),
                    SizedBox(height: 5,),
                    Divider(thickness: 1,color: Colors.grey.shade300,),
                    Row(children: [
                      Icon(Icons.language,color: Colors.grey,size: 25,),
                      SizedBox(width: 20,),
                      Text("Languages",style: TextStyle(color:Colors.grey,fontSize:17))
                    ],),
                    SizedBox(height: 5,),
                    Divider(thickness: 15,color: Colors.grey.shade200,),
                    SizedBox(height: 10,),
                    Row(children: [
                      Icon(Icons.star,color: Colors.deepPurpleAccent,size: 25,),
                      SizedBox(width: 20,),
                      Text("Telegram Premium",style: TextStyle(color:Colors.grey,fontSize:17)),
                    ],),
                    SizedBox(height: 5,),
                    Divider(thickness: 15,color: Colors.grey.shade200,),
                    SizedBox(height: 10,),
                    Text("Help",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700,fontSize: 15)),
                  ],
                ),
              )
            ],
          )
        )
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Telegram",
        style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          actions: [
            Icon(Icons.lock),
            SizedBox(width: 10,),
            Icon(Icons.search),
            SizedBox(width: 10,),
        ],
        bottom: TabBar(
          labelStyle: TextStyle(fontSize: 18,color: Colors.blue),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          isScrollable: true,
          tabs: [
            Tab(text: "All",),
            Tab(text: "Personal",),
            Tab(text: "Groups",),
            Tab(text: "Channel",),
            Tab(text: "Bots",),
          ],
        ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context,"/ContactPage");
        },
        child: Icon(Icons.edit)
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AllPage(),
          PrivatePage(),
          GroupsPage(),
          ChannelPage(),
          BotsPage(),
        ],
      )
    );
  }
}
