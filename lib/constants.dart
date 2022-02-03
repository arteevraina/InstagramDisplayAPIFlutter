class Constants {
  static const String clientId = "";
  static const String appSecret = "";
  static const String redirectUrl = "https://www.brandie.io/";
  static const String scope = "user_profile,user_media";
  static const String responseType = "code";
  static const String url =
      "https://api.instagram.com/oauth/authorize?client_id=$clientId&redirect_uri=$redirectUrl&scope=$scope&response_type=$responseType";
  static const List<String> mediasListFields = ['id', 'caption'];
  static const List<String> mediaFields = [
    'id',
    'media_type',
    'media_url',
    'username',
    'timestamp'
  ];
}
