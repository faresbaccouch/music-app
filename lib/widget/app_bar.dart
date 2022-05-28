import 'package:flutter/material.dart';

AppBar appBarWidget({
  required leading,
  required actionsWidget,
  required title,
}) {
  return AppBar(
    elevation: 0,
    leading: leading,
    centerTitle: true,
    title: title,
    actions: [actionsWidget],
  );
}
