import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_dummy/constants.dart';
import 'package:whatsapp_dummy/screens/bottomNavigation.dart';
import 'package:whatsapp_dummy/screens/camera.dart';
import 'package:whatsapp_dummy/screens/chats.dart';
import 'package:whatsapp_dummy/screens/storyUI.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
        length: 4,
        vsync: this);
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: themeColor,
        appBar: new AppBar(
          title: Text("WhatsApp Dummy"),
          elevation: 0,
          backgroundColor: themeColor,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {},),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {},)
          ],
        ),
        body: Container(
            child: Column(
                children: [
                  StoryScreenUI(),
                  ChatScreen(),
                ]
            )
        ),
      floatingActionButton: BottomNavigationUI(tabController: _tabController,),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
