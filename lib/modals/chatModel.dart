import 'package:intl/intl.dart';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final bool seen;
  final bool online;

  ChatModel({this.name, this.message, this.time, this.avatarUrl,this.seen,this.online});

}
  List<ChatModel> dummyData = [
    new ChatModel(
      name: "Alpha",
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
      seen: true,
      online: true,
      avatarUrl: "https://www.kickassfacts.com/wp-content/uploads/2021/04/bear.jpg"
    ),
    new ChatModel(
      name: "Beta",
      message: "Hey flutter, You are amazing",
      seen: false,
      online: false,
      time: DateFormat.jm().format(DateTime.now()),
      avatarUrl: "http://www.mandysam.com/img/random.jpg"
    ),
    new ChatModel(
      seen: true,
      online: false,
      name: "Gama",
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
      avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAkZFtytms073Aagxoe8DdLxpBtGVR_T576Q&usqp=CAU",
    ),
    new ChatModel(
      name: "Delta",
      seen: false,
      online: true,
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXjExFxyPP9V4ENXyW5p_M68tQ-TVyP43CuQ&usqp=CAU'
    ),
    new ChatModel(
      name: "Omega",
      seen: true,
      online: true,
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
      avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7MgtRJaySiwtyxPHeKmcj_80fAlr-fetv0w&usqp=CAU"
    ),

    new ChatModel(
      name: "Trigo",
      seen: true,
      online: false,
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
        avatarUrl: "http://www.mandysam.com/img/random.jpg"
    ),
    new ChatModel(
      name: "Tangent",
      seen: false,
      online: true,
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
      avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRgpxO3OBCHUBGfIx_TiSpq9EzeW-ahKFHWQ&usqp=CAU"
    ),
    new ChatModel(
      name: "Pi",
      seen: true,
      online: false,
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
      avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeax9WQNG6jF-7GqwwoxUskqf0ZcEc094wcA&usqp=CAU"
    ),
    new ChatModel(
      name: "Vasco",
      seen: true,
      online: false,
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
        avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7MgtRJaySiwtyxPHeKmcj_80fAlr-fetv0w&usqp=CAU"
    ),
    new ChatModel(
      name: "ArmStrong",
      seen: false,
      online: true,
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
        avatarUrl: "http://www.mandysam.com/img/random.jpg"
    ),
    new ChatModel(
      name: "Columbus",
      seen: true,
      online: true,
      message: "Hey flutter, You are amazing",
      time: DateFormat.jm().format(DateTime.now()),
        avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXjExFxyPP9V4ENXyW5p_M68tQ-TVyP43CuQ&usqp=CAU'
    ),
  ];


