import 'dart:collection';

import 'package:android_lyrics_player/data/models/flunkey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../controller/cubit/internet_cubit.dart';
import '../../../utils/constants/strings.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/message_dialog.dart';
import '../../widgets/message_view.dart';
import '../../../controller/bloc/flunkey_list_bloc/flunkey_list_bloc.dart'
    as slb;
import 'circular_cardbg_widget.dart';
import 'flunkey_list_view.dart';
import 'linear_cardbg_widget.dart';

class ProductListScreen extends StatefulWidget {
  static const routeName = Strings.homeScreenRoute;

  ProductListScreen({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /* final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    String trackId  = args.arg1!;*/

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(Icons.camera, size: 30, color: Colors.white),
              ),
              Text("Acrobuild"),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Icon(Icons.search, size: 30, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Icon(Icons.notifications, size: 30, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Icon(Icons.person, size: 30, color: Colors.white),
              ),
            ],
          ),
          backgroundColor: const Color(0xff3598fa),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                // <-- SEE HERE
                decoration: BoxDecoration(color: const Color(0xff764abc)),
                accountName: TextField(
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  readOnly: true,
                  decoration:
                      new InputDecoration.collapsed(hintText: 'Flutter App'),
                ),
                accountEmail: TextField(
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  readOnly: true,
                  decoration:
                      new InputDecoration.collapsed(hintText: 'Android Studio'),
                ),
                currentAccountPicture: Image.asset('assets/usericon.png'),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Page 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.train,
                ),
                title: const Text('Page 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Wrap(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CardBackWidget(
                  title: Strings.activeUserTitle,
                  subTitle: Strings.activeUserSubtitle,
                  dataMap: Strings.activeUserDataMap),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CardBackWidget(
                  title: Strings.projectUserTitle,
                  subTitle: Strings.projectUserSubtitle,
                  dataMap: Strings.projectUserDataMap),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: LinearCardWidget(
                  title: Strings.smsUsageTitle,
                  subTitle: Strings.smsUsageSubtitle,
                  dataMap: Strings.smsUsageDataMap),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: LinearCardWidget(
                  title: Strings.emailUsageTitle,
                  subTitle: Strings.emailUsageSubtitle,
                  dataMap: Strings.emailUsageDataMap),
            ),
          ])
        ])));
  }
}
