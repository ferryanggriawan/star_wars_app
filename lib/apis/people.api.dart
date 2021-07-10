import 'dart:convert';

import 'package:star_wars_app/models/person.model.dart';
import 'package:http/http.dart' as http;

class PeopleApi {
  Future<List<PersonModel>> browse() async {
    try {
      final url = Uri.parse('https://swapi.dev/api/people/');
      final resp = await http.get(url);
      final respJson = jsonDecode(resp.body);
      final results = respJson['results'];

      List<PersonModel> persons = [];

      if (results != null) {
        for (var result in results) {
          PersonModel person = PersonModel.fromJson(result);
          persons.add(person);
        }
      }

      return persons;
    } catch (e) {
      throw e;
    }
  }
}
