import 'package:flutter/material.dart';
import 'package:instagram_pictures/model/insta_media.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key, required this.medias}) : super(key: key);
  final List<InstaMedia> medias;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(medias[index].media_url),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 8.0);
        },
        itemCount: medias.length,
      ),
    );
  }
}
