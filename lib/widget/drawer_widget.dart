import 'package:flutter/material.dart';
import 'package:zingo/widget/info_list_widget.dart';

drawerWidget(BuildContext context) {
  return Drawer(
    elevation: 0,
    width: MediaQuery.of(context).size.width * 0.7,
    child: SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.close,
                    size: 35,
                  ),
                ),
                const Icon(
                  Icons.brightness_2_outlined,
                  size: 35,
                  color: Color.fromARGB(155, 137, 150, 184),
                )
              ],
            ),
            const SizedBox(height: 30),
            infoListWidget(iconData: Icons.person_outline, text: "Profile"),
            infoListWidget(
                iconData: Icons.favorite_border, text: "Liked Songs"),
            infoListWidget(iconData: Icons.language, text: "Language"),
            infoListWidget(
                iconData: Icons.message_outlined, text: "Contact us"),
            infoListWidget(
                iconData: Icons.lightbulb_circle_rounded, text: "FAQs"),
            infoListWidget(iconData: Icons.settings, text: "Settings"),
          ],
        ),
      ),
    ),
  );
}
