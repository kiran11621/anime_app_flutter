import 'package:anime_app/models/anime_response.dart';
import 'package:anime_app/view_models/anime_provider.dart';
import 'package:anime_app/views/anime_view_screen.dart';
import 'package:anime_app/views/custom_widgets/rich_text.dart';
import 'package:anime_app/views/custom_widgets/sized_box.dart';
import 'package:flutter/material.dart' as flutter;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  late AnimeProvider _animeProvider;

  Future<void> apiCall() async {
    await _animeProvider.fetchAnime(context);
  }

  @override
  void initState() {
    super.initState();

    _animeProvider = Provider.of<AnimeProvider>(context, listen: false);

    apiCall();
  }

  @override
  Widget build(BuildContext context) {
    _animeProvider = Provider.of<AnimeProvider>(context);

    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime'),
        backgroundColor: Theme.of(context).navigationBarTheme.backgroundColor,
      ),
      body: ListView.builder(
        itemCount:
            ((_animeProvider.animeResponse.data?.length ?? 0) / 2).floor(),
        itemBuilder: (context, index) {
          index *= 2;
          return (screenWidth < 800)
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnimeViewScreen(
                            anime: _animeProvider.animeResponse.data?[index] ??
                                Datum(),
                          ),
                        ),
                      );
                    },
                    child: Card(
                      child: SizedBox(
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(
                            10,
                          ),
                          child: Row(
                            children: [
                              flutter.Image.network(
                                _animeProvider.animeResponse.data?[index]
                                        .images?['jpg']?.imageUrl ??
                                    "",
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _animeProvider.animeResponse.data?[index]
                                              .title ??
                                          "No Title Found",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                      maxLines: 1,
                                      overflow: TextOverflow.fade,
                                    ),
                                    const SizedBoxHeight5(),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: RichTextTwoArgument(
                                            title: 'Score: ',
                                            value: _animeProvider.animeResponse
                                                    .data?[index].score
                                                    ?.toString() ??
                                                "-",
                                          ),
                                        ),
                                        Expanded(
                                          child: RichTextTwoArgument(
                                            title: 'Scored By: ',
                                            value: _animeProvider.animeResponse
                                                    .data?[index].score
                                                    ?.toString() ??
                                                "-",
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBoxHeight5(),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: RichTextTwoArgument(
                                            title: 'Rank: ',
                                            value: _animeProvider.animeResponse
                                                    .data?[index].rank
                                                    ?.toString() ??
                                                "-",
                                          ),
                                        ),
                                        Expanded(
                                          child: RichTextTwoArgument(
                                            title: 'Popularity: ',
                                            value: _animeProvider.animeResponse
                                                    .data?[index].popularity
                                                    ?.toString() ??
                                                "-",
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBoxHeight5(),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: RichTextTwoArgument(
                                            title: 'Episodes: ',
                                            value: _animeProvider.animeResponse
                                                    .data?[index].episodes
                                                    ?.toString() ??
                                                "-",
                                          ),
                                        ),
                                        Expanded(
                                          child: RichTextTwoArgument(
                                            title: 'Duration: ',
                                            value: _animeProvider.animeResponse
                                                    .data?[index].duration
                                                    ?.toString() ??
                                                "-",
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBoxHeight5(),
                                    Text(
                                      _animeProvider.animeResponse.data?[index]
                                              .synopsis ??
                                          "",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: flutter.Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AnimeViewScreen(
                                  anime: _animeProvider
                                          .animeResponse.data?[index] ??
                                      Datum(),
                                ),
                              ),
                            );
                          },
                          child: Card(
                            child: SizedBox(
                              height: 150,
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  10,
                                ),
                                child: Row(
                                  children: [
                                    flutter.Image.network(
                                      _animeProvider.animeResponse.data?[index]
                                              .images?['jpg']?.imageUrl ??
                                          "",
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _animeProvider.animeResponse
                                                    .data?[index].title ??
                                                "No Title Found",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                            maxLines: 1,
                                            overflow: TextOverflow.fade,
                                          ),
                                          const SizedBoxHeight5(),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Score: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index]
                                                          .score
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Scored By: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index]
                                                          .score
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBoxHeight5(),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Rank: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index]
                                                          .rank
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Popularity: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index]
                                                          .popularity
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBoxHeight5(),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Episodes: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index]
                                                          .episodes
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Duration: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index]
                                                          .duration
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBoxHeight5(),
                                          Text(
                                            _animeProvider.animeResponse
                                                    .data?[index].synopsis ??
                                                "",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AnimeViewScreen(
                                  anime: _animeProvider
                                          .animeResponse.data?[index] ??
                                      Datum(),
                                ),
                              ),
                            );
                          },
                          child: Card(
                            child: SizedBox(
                              height: 150,
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  10,
                                ),
                                child: Row(
                                  children: [
                                    flutter.Image.network(
                                      _animeProvider
                                              .animeResponse
                                              .data?[index + 1]
                                              .images?['jpg']
                                              ?.imageUrl ??
                                          "",
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _animeProvider.animeResponse
                                                    .data?[index + 1].title ??
                                                "No Title Found",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                            maxLines: 1,
                                            overflow: TextOverflow.fade,
                                          ),
                                          const SizedBoxHeight5(),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Score: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index + 1]
                                                          .score
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Scored By: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index + 1]
                                                          .score
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBoxHeight5(),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Rank: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index + 1]
                                                          .rank
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Popularity: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index + 1]
                                                          .popularity
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBoxHeight5(),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Episodes: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index + 1]
                                                          .episodes
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                              Expanded(
                                                child: RichTextTwoArgument(
                                                  title: 'Duration: ',
                                                  value: _animeProvider
                                                          .animeResponse
                                                          .data?[index + 1]
                                                          .duration
                                                          ?.toString() ??
                                                      "-",
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBoxHeight5(),
                                          Text(
                                            _animeProvider
                                                    .animeResponse
                                                    .data?[index + 1]
                                                    .synopsis ??
                                                "",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
