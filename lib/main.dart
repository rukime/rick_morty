import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/person_info.dart';
import 'package:rick_and_morty_app/person_list.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.grey.shade800,
      ),
      routes: {
        '/list': (context) => PersonList(),
        '/info': (context) {
          final person = ModalRoute.of(context)!.settings.arguments as Person;

          inspect(person.name);
          print('1');

          return PersonInfo(
            name: person.name,
            status: person.status,
            species: person.species,
            gender: person.gender,
            origin: person.origin,
            location: person.location,
            image: person.image,
          );
        },
      },
      initialRoute: '/list',
    );
  }
}
