import 'package:anime_app/models/anime_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class AnimeProvider extends ChangeNotifier {
  // Loading Variable
  bool isLoading = true;

  // API Response
  AnimeResponse animeResponse = AnimeResponse();

  Future<void> launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication, // Works for Android, iOS, and Web
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  // API call
  Future<void> fetchAnime(
    BuildContext context,
  ) async {
    try {
      final response = await http.get(
        Uri.parse('https://api.jikan.moe/v4/anime'),
      );

      if (response.statusCode == 200) {
        if (response.body != "") {
          animeResponse = animeResponseFromJson(response.body);
        } else {}
      } else {
        throw Exception('Something went wrong, please retry');
      }
    } catch (e, s) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Something went wrong,'),
          ),
        );
      }
    }

    notifyListeners();
  }
}
