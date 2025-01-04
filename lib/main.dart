import 'package:anime_app/models/anime_response.dart';
import 'package:anime_app/views/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'view_models/anime_provider.dart';

void main() async {
  // Widget Binding and Intializing
  WidgetsFlutterBinding.ensureInitialized();

  // Hive Initialization for flutter
  await Hive.initFlutter();

  // Registering Adapters
  Hive.registerAdapter(AnimeResponseAdapter());
  Hive.registerAdapter(DatumAdapter());
  Hive.registerAdapter(AiredAdapter());
  Hive.registerAdapter(PropAdapter());
  Hive.registerAdapter(FromAdapter());
  Hive.registerAdapter(BroadcastAdapter());
  Hive.registerAdapter(DemographicAdapter());
  Hive.registerAdapter(ImageAdapter());
  Hive.registerAdapter(TitleAdapter());
  Hive.registerAdapter(TrailerAdapter());
  Hive.registerAdapter(ImagesAdapter());
  Hive.registerAdapter(PaginationAdapter());
  Hive.registerAdapter(ItemsAdapter());

  // Opened a box with name anime
  await Hive.openBox<AnimeResponse>('anime');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AnimeProvider>(
          create: (_) => AnimeProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            bodyMedium: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            bodySmall: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
            titleMedium: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            titleLarge: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          navigationBarTheme: const NavigationBarThemeData(
            backgroundColor: Color.fromARGB(255, 0, 61, 91),
          ),
          cardTheme: const CardTheme(
            color: Color.fromARGB(31, 207, 216, 220),
          ),
          useMaterial3: true,
        ),
        home: const HomePageScreen(),
      ),
    );
  }
}
