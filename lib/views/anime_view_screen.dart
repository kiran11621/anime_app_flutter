import 'package:anime_app/models/anime_response.dart';
import 'package:anime_app/view_models/anime_provider.dart';
import 'package:anime_app/views/custom_widgets/rich_text.dart';
import 'package:anime_app/views/custom_widgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as flutter;
import 'package:provider/provider.dart';

class AnimeViewScreen extends StatefulWidget {
  final Datum anime;

  const AnimeViewScreen({
    super.key,
    required this.anime,
  });

  @override
  State<AnimeViewScreen> createState() => _AnimeViewScreenState();
}

class _AnimeViewScreenState extends State<AnimeViewScreen> {
  late AnimeProvider _animeProvider;

  @override
  Widget build(BuildContext context) {
    _animeProvider = Provider.of<AnimeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime'),
        backgroundColor: Theme.of(context).navigationBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: flutter.Image.network(
                  widget.anime.images?['jpg']?.largeImageUrl ?? "",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.anime.title ?? "",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              OutlinedButton.icon(
                onPressed: widget.anime.trailer?.url == null
                    ? null
                    : () {
                        _animeProvider.launchURL(
                          Uri.parse(
                            widget.anime.trailer?.url ?? "",
                          ),
                        );
                      },
                icon: const Icon(
                  Icons.slideshow,
                  color: Colors.red,
                ),
                label: const Text('Trailer'),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: RichTextTwoArgument(
                      title: 'Default Name: ',
                      value: widget.anime.titles?[0].title ??
                          widget.anime.title ??
                          "",
                    ),
                  ),
                  Expanded(
                    child: RichTextTwoArgument(
                      title: 'Japenese Name: ',
                      value: widget.anime.titles?[0].title ?? "Not Found",
                    ),
                  ),
                ],
              ),
              const SizedBoxHeight10(),
              Row(
                children: [
                  Expanded(
                    child: RichTextTwoArgument(
                      title: 'Type: ',
                      value: widget.anime.type?.name ?? "-",
                    ),
                  ),
                  Expanded(
                    child: RichTextTwoArgument(
                      title: 'Japenese Name: ',
                      value: widget.anime.source?.name ?? "-",
                    ),
                  ),
                ],
              ),
              const SizedBoxHeight10(),
              Row(
                children: [
                  Expanded(
                    child: RichTextTwoArgument(
                      title: 'Episodes: ',
                      value: widget.anime.episodes?.toString() ?? "-",
                    ),
                  ),
                  Expanded(
                    child: RichTextTwoArgument(
                      title: 'Status: ',
                      value: widget.anime.status?.name ?? "-",
                    ),
                  ),
                ],
              ),
              const SizedBoxHeight5(),
              const Divider(),
              const SizedBoxHeight5(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0;
                      i < (widget.anime.genres?.length ?? 0);
                      i++) ...[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(widget.anime.genres?[i].name ?? ""),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ],
              ),
              const SizedBoxHeight5(),
              const Divider(),
              const SizedBoxHeight5(),
              Text(
                'Synopsis',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBoxHeight10(),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.anime.synopsis ?? "No Synopsis Found",
                    ),
                  ),
                ],
              ),
              const SizedBoxHeight5(),
              const Divider(),
              const SizedBoxHeight5(),
              Text(
                'Background',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBoxHeight10(),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.anime.background ?? "No Backfound Found",
                    ),
                  ),
                ],
              ),
              const SizedBoxHeight5(),
              const Divider(),
              const SizedBoxHeight5(),
              Text(
                'Producers',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBoxHeight10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0;
                      i < (widget.anime.producers?.length ?? 0);
                      i++) ...[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(widget.anime.producers?[i].name ?? ""),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ],
              ),
              const SizedBoxHeight5(),
              const Divider(),
              const SizedBoxHeight5(),
              Text(
                'Licensers',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBoxHeight10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0;
                      i < (widget.anime.licensors?.length ?? 0);
                      i++) ...[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(widget.anime.licensors?[i].name ?? ""),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ],
              ),
              const SizedBoxHeight5(),
              const Divider(),
              const SizedBoxHeight5(),
            ],
          ),
        ),
      ),
    );
  }
}
