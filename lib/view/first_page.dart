import 'package:flutter/material.dart';
import 'package:zingo/view/open_music_view.dart';
import 'package:zingo/widget/single_music_view.dart';
import 'package:zingo/widget/text_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(
            text: "Recommended for you",
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                var int = index + 3;
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OpenMusicVeiw(
                              imageName: int.toString(),
                            )));
                  },
                  child: SingleMusicView(
                    imageString: "$int",
                  ),
                );
              },
            ),
          ),
          textWidget(
            text: "My Playlist",
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return SingleMusicView(imageString: "$index");
              },
            ),
          ),
        ],
      ),
    );
  }
}
