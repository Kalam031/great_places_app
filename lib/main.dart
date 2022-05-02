import 'package:flutter/material.dart';
import 'package:great_places_app/Providers/great_places.dart';
import 'package:great_places_app/screens/add_place_screen.dart';
import 'package:great_places_app/screens/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme(
            primary: Colors.blueAccent, // focus
            onPrimary: Colors.white,

            background: Colors.red,
            onBackground: Colors.black,

            secondary: Colors.orangeAccent, //float action button
            onSecondary: Colors.white,

            error: Colors.black,
            onError: Colors.white,

            surface: Colors.white, // AppBar
            onSurface: Colors.black, //icons, inputs

            brightness: Brightness.light,
          ),
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
