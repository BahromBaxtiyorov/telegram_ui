import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/models/contactModel.dart';
import 'package:telegram_ui/pages/contactPage.dart';

import '../attributes.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({Key? key}) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  TextEditingController firstNameCtr = TextEditingController();
  TextEditingController lastNameCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New Contact")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextFormField(
                controller: firstNameCtr,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "First name(required)",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    )
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide()
                  )
                ),
              )
            ),
            SizedBox(height: 15,),
           Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: TextFormField(
                  controller: lastNameCtr,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Last name(optional)",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide()
                      )
                  ),
                )
            ),
            SizedBox(height: 15,),
            Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  maxLength: 9,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      hintText: "00 0000000",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide()
                      ),
                    prefixIcon: SizedBox(
                      width: 85,
                      child: Row(
                        children: [
                         SizedBox(
                           height: 20,
                             width: 40,
                             child: Image.asset("assets/images/flag.png")),
                          SizedBox(width: 5,),
                          Text("+998"),
                          SizedBox(width: 3,),
                          VerticalDivider(thickness: 3,),
                        ],
                      ),
                    )
                  ),
                )
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  if(firstNameCtr.text.isNotEmpty) {
                    contactList.add(ContactModel( firstNameCtr.text+' '+ lastNameCtr.text,
                        "0000",
                       true));
                    Navigator.of(context)
                    .pushReplacement(
                      MaterialPageRoute(builder:(BuildContext context){
                        return ContactPage();
                      })
                    );
                  }
                },
                child: Text("Create Contact")
            )
          ],
        )
      )
    );
  }
}
