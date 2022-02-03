import 'package:pokedex_app/api/pokemon_api.dart';

class Pokemon {
  int id;
  String name;
  Species species;
  Sprites sprites;
  List<Stat> stats;
  List<Type> types;
  List<Species> forms;
  List<Ability> abilities;

  Pokemon({
    required this.id,
    required this.name,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.forms,
    required this.abilities,
  });

    static Pokemon fromJson(Map<String, dynamic> json){
    return Pokemon(
      id: json["id"],
        name: json["name"],
        stats: List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
        forms: List<Species>.from(
          json["forms"].map((x) => Species.fromJson(x)),
        ),
        species: Species.fromJson(json["species"]),
        sprites: Sprites.fromJson(json["sprites"]),
        abilities: List<Ability>.from(
          json["abilities"].map((x) => Ability.fromJson(x)),
        ),
    );    
  }
}

class Ability {
  Species ability;
  bool isHidden;
  int slot;

  Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  static Ability fromJson(Map<String, dynamic> json){
    return Ability(
        ability: Species.fromJson(json["ability"]),
        isHidden: json["is_hidden"],
        slot: json["slot"],
    );
  }
}

class Stat {
  int baseStat;
  int effort;
  Species stat;

  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  static Stat fromJson(Map<String, dynamic> json){
    return Stat(
      baseStat: json["base_stat"],
        effort: json["effort"],
        stat: Species.fromJson(json["stat"]),
    );
  }
}

class Sprites {
  String backDefault;
  dynamic backFemale;
  String backShiny;
  dynamic backShinyFemale;
  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;

  Sprites({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  static Sprites fromJson(Map<String, dynamic> json){
    return Sprites(
        backDefault: json["back_default"],
        backFemale: json["back_female"],
        backShiny: json["back_shiny"],
        backShinyFemale: json["back_shiny_female"],
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
    );
  }
}

class Species {
  String name;
  String url;

  Species({
    required this.name,
    required this.url,
  });

  static Species fromJson(Map<String, dynamic> json){
    return Species(
      name: json["name"],
      url: json["url"],
    );
  }
}

class Type {
  int slot;
  Species type;

  Type({
    required this.slot,
    required this.type,
  });

  static Type fromJson(Map<String, dynamic> json){
    return Type(
        slot: json["slot"],
        type: Species.fromJson(json["type"]),
    );
  }
}