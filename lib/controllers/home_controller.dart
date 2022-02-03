import 'package:get/get.dart';
import 'package:pokedex_app/api/pokemon_api.dart';
import 'package:pokedex_app/models/base_pokemon.dart';

class HomeController extends GetxController {

  List<BasePokemon> _basePokemons = [];

  List<BasePokemon> get basePokemons => _basePokemons;

  Future<void> loadBasePokemons() async{
    final data = await PokemonApi.instance.getBasePokemons();
    this._basePokemons = data!;
  }

  
}