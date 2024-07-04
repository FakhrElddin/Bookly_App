import 'package:url_launcher/url_launcher.dart';

import 'custom_snack_bar.dart';

Future<void> launchCustomUrl(
  context, {
  required String url,
}) async {
  Uri uri = Uri.parse(url);
  try {
    if (!await launchUrl(uri)) {}
  } catch (e) {
    customSnackBar(
      context,
      text: 'cannot launch $url',
    );
  }
}
