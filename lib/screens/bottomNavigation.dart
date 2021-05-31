import 'package:flutter/material.dart';
import '../constants.dart';

class BottomNavigationUI extends StatelessWidget {
  const BottomNavigationUI({
    Key key,
    @required TabController tabController
  }) :_tabController = tabController,
        super(key: key);
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
        borderRadius: BorderRadius.all(containerRadius),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.height / 18,
          color: themeColor,
          child: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                child: Icon(Icons.comment,size: 20),
              ),
              Tab(
                child: Icon(Icons.add,size: 20),
              ),
              Tab(
                child: Icon(Icons.video_call,size: 20),
              ),
              Tab(
                child: Icon(Icons.phone,size: 20),
              ),


            ],
          ),
        )
    );
  }
}

