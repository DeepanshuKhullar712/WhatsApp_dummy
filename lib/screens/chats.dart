import 'package:flutter/material.dart';
import '../modals/chatModel.dart';

class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  double customOpacity=0;
  @override
  Widget build(BuildContext context) {

    return   Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10,right: 10,top: 10),
              child: ListView.builder(
                  itemCount: dummyData.length,
                  itemBuilder: (context,i)=> Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(dummyData[i].avatarUrl),
                          radius: 26,
                          child: dummyData[i].online
                              ? Container(
                            margin: EdgeInsets.only(bottom: 40, right: 40),
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(width: 2,color: Colors.white)
                            ),
                          )
                              : Container(),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              dummyData[i].name,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              dummyData[i].time,
                              style: TextStyle(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                if(dummyData[i].seen)
                                  Icon(
                                    Icons.done_all,
                                    size: 18,
                                    color: Colors.blue,
                                  ),
                                SizedBox(width: 5,),
                                Expanded(
                                  child: Text(
                                    dummyData[i].message,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                if(!dummyData[i].seen)
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  )

                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                        indent: 70,
                        endIndent: 20,
                      )
                    ],
                  )
              ),
            ),
          ),

    ) ;


  }
}
