import 'models/chatModel.dart';
import 'models/contactModel.dart';

List<ChatModel> chatList=[
  ChatModel("Name","assets/images/i (2).webp","23:11","LastMessage"),
  ChatModel("Name","assets/images/i (3).webp","22:11","LastMessage"),
  ChatModel("Name","assets/images/i (2).webp","21:11","LastMessage"),
  ChatModel("Name","assets/images/i (2).webp","20:11","LastMessage"),
  ChatModel("Name","assets/images/i (2).webp","19:11","LastMessage"),
  ChatModel("Name","assets/images/i (2).webp","18:11","LastMessage"),
  ChatModel("Name","assets/images/i (2).webp","18:11","LastMessage"),
  ChatModel("Name","assets/images/i (2).webp","18:11","LastMessage"),
  ChatModel("Name","assets/images/i (2).webp","18:11","LastMessage"),
  ChatModel("Name","assets/images/i (2).webp","18:11","LastMessage"),

];

List<ContactModel> contactList = [
  ContactModel("Jeff Bezos","aaa", true,image: "assets/images/i (11).webp"),
  ContactModel("Elon Musk","aaa", true,image: "assets/images/i (10).webp"),
  ContactModel("Jeff Bezos","last seen at 23:11", false,image: "assets/images/i (10).webp"),
  ContactModel("Jeff Bezos","last seen at 22:11", false,image: "assets/images/i (10).webp"),
  ContactModel("Jeff Bezos","last seen at 21:11", false,image: "assets/images/i (10).webp"),
  ContactModel("Jeff Bezos","last seen at 20:11", false,image: "assets/images/i (10).webp"),
  ContactModel("Jeff Bezos","last seen at 19:11", false,image: "assets/images/i (10).webp"),
  ContactModel("Jeff Bezos","last seen at 28:11", false,image: "assets/images/i (10).webp"),
  ContactModel("Jeff Bezos","last seen recently", false,image: "assets/images/i (10).webp"),
  ContactModel("Jeff Bezos","last seen recently", false,image: "assets/images/i (10).webp"),

];
bool isClicked = false;
List<ContactModel> searchList = [

];