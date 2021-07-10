import 'dart:convert';
import 'package:star_wars_app/helper/model.helper.dart';

class PersonModel {
  String name,
      height,
      mass,
      hairColor,
      skinColor,
      eyeColor,
      birthYear,
      gender,
      homeworld,
      created,
      edited,
      url;
  List<dynamic> films, vehicles, starships, species;

  PersonModel({
    this.name,
    this.birthYear,
    this.created,
    this.edited,
    this.eyeColor,
    this.films,
    this.gender,
    this.hairColor,
    this.height,
    this.homeworld,
    this.mass,
    this.skinColor,
    this.species,
    this.starships,
    this.url,
    this.vehicles,
  });

  factory PersonModel.fromJson(Map<String, dynamic> jsonData) {
    return PersonModel(
      name: checkData('name', jsonData, ''),
      birthYear: checkData('birth_year', jsonData, ''),
      created: checkData('created', jsonData, ''),
      edited: checkData('edited', jsonData, ''),
      eyeColor: checkData('eye_color', jsonData, ''),
      films: jsonData['films'],
      gender: checkData('gender', jsonData, ''),
      hairColor: checkData('hair_color', jsonData, ''),
      height: checkData('height', jsonData, ''),
      homeworld: checkData('homeworld', jsonData, ''),
      mass: checkData('mass', jsonData, ''),
      skinColor: checkData('skin_color', jsonData, ''),
      species: jsonData['species'],
      starships: jsonData['starships'],
      url: checkData('url', jsonData, ''),
      vehicles: jsonData['vehicles'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "height": this.height,
      "mass": this.mass,
      "hair_color": this.hairColor,
      "skin_color": this.skinColor,
      "eye_color": this.eyeColor,
      "birth_year": this.birthYear,
      "gender": this.gender,
      "homeworld": this.homeworld,
      "films": this.films,
      "species": this.species,
      "vehicles": this.vehicles,
      "starships": this.starships,
      "created": this.created,
      "edited": this.edited,
      "url": this.url,
    };
  }

  @override
  String toString() {
    final personJson = this.toJson();
    return jsonEncode(personJson);
  }
}
