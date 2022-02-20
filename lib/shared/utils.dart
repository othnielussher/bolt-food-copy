// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class Utils {
  static void launchURL(String url) async {
    html.window.open(url, url);
  }
}
