import 'package:dio/dio.dart';
import 'package:pokedex_app/models/base_pokemon.dart';

class PokemonApi {
  PokemonApi._internal();
  static PokemonApi _instance = PokemonApi._internal();
  static PokemonApi get instance => _instance;

  final _dio = Dio();

  Future<List<BasePokemon>?> getBasePokemons() async {
    try{
      final Response response = await this._dio.get('https://pokeapi.co/api/v2/pokemon');

      return (response.data['results'] as List).map((e) => BasePokemon.fromJson(e)).toList();
      
    } catch(e){
      print(e);
      return null;
    }
  }

}