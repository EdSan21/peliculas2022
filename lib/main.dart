import 'package:flutter/material.dart';
import 'package:peliculas2022/models/model.dart';
import 'package:peliculas2022/providers/movies_provider.dart';
import 'package:peliculas2022/screens/credits_screen.dart';
import 'package:peliculas2022/screens/screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: true),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Péliculas App Udeo',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomeScreen(),
          'details': (_) => const DetailsScreen(),
          'credits': (_) => const CreditsScreen(),
          'company': (_) => const CompanyScreen(),
          'companyimages': (_) => const CompanyImagesScreen(),
        },
        theme: ThemeData.light()
            .copyWith(appBarTheme: const AppBarTheme(color: Colors.indigo)));
  }
}
