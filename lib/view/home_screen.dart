import 'package:flutter/material.dart';
import 'package:zingo/view/first_page.dart';
import 'package:zingo/widget/app_bar.dart';
import 'package:zingo/widget/drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: appBarWidget(
        title: const Text(""),
        actionsWidget: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            child: Icon(Icons.search),
          ),
        ),
        leading: null,
      ),
      body: const FirstPage(),
    );
  }
}
