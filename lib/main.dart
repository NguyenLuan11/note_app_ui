import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:note_app/contants.dart';
import 'package:note_app/screens/list_notes/list_notes.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
    enabled: true,
  ));

  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        fontFamily: "IconBroken",
        // scaffoldBackgroundColor: kPrimaryColor,
        textTheme:
            Theme.of(context).textTheme.apply(displayColor: kPrimaryColor),
        appBarTheme: const AppBarTheme(
          color: kPrimaryColor,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 40,
            weight: 100,
          ),
        ),
        useMaterial3: true,
      ),
      home: const ListNotes(),
    );
  }
}
