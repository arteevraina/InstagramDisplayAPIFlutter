import "dart:convert";
import "package:http/http.dart" as http;

import "constants.dart";
import "model/insta_media.dart";

class InstagramService {
  late String authorizationCode;
  late String? userID;
  late String? accessToken;

  // Gets the authorization code from the redirect url.
  void getAuthorizationCode(String url) {
    authorizationCode = url
        .replaceAll("${Constants.redirectUrl}?code=", "")
        .replaceAll("#_", "");

    print("Authorization Code $authorizationCode");
  }

  // Get the token and the userId.
  Future<bool> getTokenAndUserId() async {
    final uri = Uri.parse("https://api.instagram.com/oauth/access_token");
    final response = await http.post(
      uri,
      body: {
        "client_id": Constants.clientId,
        "redirect_uri": Constants.redirectUrl,
        "client_secret": Constants.appSecret,
        "grant_type": "authorization_code",
        "code": authorizationCode,
      },
    );

    print(response);

    accessToken = json.decode(response.body)["access_token"];
    userID = json.decode(response.body)["user_id"].toString();

    print("accessToken &&&&&&&&&&&&& userId");
    print(accessToken);
    print(userID);
    return (accessToken != null && userID != null) ? true : false;
  }

  Future<List<InstaMedia>> getAllMedias() async {
    /// Parse according fieldsList.
    /// Request instagram user medias list.
    /// Request for each media id the details.
    /// Set all medias as list Object.
    /// Returning the List<InstaMedia>.
    final String fields = Constants.mediasListFields.join(",");

    final uri = Uri.parse(
        "https://graph.instagram.com/$userID/media?fields=$fields&access_token=$accessToken");

    final responseMedia = await http.get(uri);

    Map<String, dynamic> mediasList = json.decode(responseMedia.body);

    final List<InstaMedia> medias = [];

    await mediasList["data"].forEach((media) async {
      // check inside db if exists (optional)
      Map<String, dynamic> m = await getMediaDetails(media["id"]);
      InstaMedia instaMedia = InstaMedia.fromJson(m);
      medias.add(instaMedia);
    });

    // need delay before returning the List<InstaMedia>
    await Future.delayed(const Duration(seconds: 1));
    return medias;
  }

  Future<Map<String, dynamic>> getMediaDetails(String mediaID) async {
    /// Parse according fieldsList.
    /// Request complete media informations.
    /// Returning the response as Map<String, dynamic>
    final String fields = Constants.mediaFields.join(",");

    final uri = Uri.parse(
        "https://graph.instagram.com/$mediaID?fields=$fields&access_token=$accessToken");

    final responseMediaSingle = await http.get(uri);

    return json.decode(responseMediaSingle.body);
  }
}
