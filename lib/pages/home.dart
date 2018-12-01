import 'package:flutter/material.dart';
import 'package:tasks/widgets/round_conner_bottom_sheet.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: Scaffold(
          backgroundColor: Colors.white,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add a new task')),
          bottomNavigationBar: BottomAppBar(
            elevation: 16.0,
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: showMenu,
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: showMore,
                ),
              ],
            ),
          ),
          body: RefreshIndicator(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: 24.0, bottom: 24.0, right: 24.0, left: 24.0),
                    child: Text(
                      'My Tasks',
                      style: TextStyle(color: Colors.black, fontSize: 28.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.radio_button_unchecked),
                    title: Text('Get budget approved by Gerg'),
                  )
                ],
              ),
              onRefresh: onRefresh),
        ));
  }

  Future onRefresh() async {
    await new Future.delayed(new Duration(seconds: 3));
    return;
  }

  showMenu() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return RoundConnerBototmSheet(Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.account_circle),
                  ),
                  title: Text(
                    'Quang Truong',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                  subtitle: Text(
                    'truongphamit@gmail.com',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Divider(
                  color: Colors.black26,
                  height: 1.0,
                ),
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'My Task',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w400),
                      ),
                      decoration: ShapeDecoration(
                          color: Colors.blue[50],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomStart: Radius.circular(22.0),
                                  topStart: Radius.circular(22.0)))),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black26,
                  height: 1.0,
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text(
                    'Create new list',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                ),
                Divider(
                  color: Colors.black26,
                  height: 1.0,
                ),
                ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text(
                    'Send feedback',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                ),
                Divider(
                  color: Colors.black26,
                  height: 1.0,
                ),
                ListTile(
                  title: Text(
                    'Open-source licenses',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(color: Colors.black),
                        )),
                    Text(
                      '•',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Terms of Service',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                )
              ],
            ),
          ));
        });
  }

  showMore() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return RoundConnerBototmSheet(Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Sort by',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black87),
                    )
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'My order',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                      Icon(Icons.check)
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Date',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black26,
                height: 1.0,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Rename list',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black87),
                        textAlign: TextAlign.start,
                      )
                    ],
                  )),
              FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Delete list',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black87),
                        textAlign: TextAlign.start,
                      )
                    ],
                  )),
              FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Delete all completed tasks',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black87),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ))
            ],
          ));
        });
  }
}
