import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:instagram_pictures/instagram_service.dart';
import 'package:instagram_pictures/model/insta_media.dart';
import 'package:instagram_pictures/test_page.dart';

import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final flutterWebviewPlugin = FlutterWebviewPlugin();
  late InstagramService instagram;
  late StreamSubscription<String> _onUrlChanged;

  @override
  void initState() {
    super.initState();
    instagram = InstagramService();

    // LISTEN CHANGES
    _onUrlChanged = flutterWebviewPlugin.onUrlChanged.listen(
      (String url) async {
        print("New url $url");
        if (url.startsWith("https://www.brandie.io/")) {
          print("Redirected");
          instagram.getAuthorizationCode(url);

          bool isTokenFetched = await instagram.getTokenAndUserId();

          if (isTokenFetched) {
            List<InstaMedia> medias = await instagram.getAllMedias();

            // Close the web view.
            flutterWebviewPlugin.close();

            // NAVIGATE TO SOME PAGE.
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => TestPage(
                  medias: medias,
                ),
              ),
            );
          }
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _onUrlChanged.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return const WebviewScaffold(
      resizeToAvoidBottomInset: true,
      url: Constants.url,
    );
  }
}
