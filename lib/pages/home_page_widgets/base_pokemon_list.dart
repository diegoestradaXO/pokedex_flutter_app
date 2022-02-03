import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_app/controllers/home_controller.dart';
import 'package:pokedex_app/models/base_pokemon.dart';

class BasePokemonList extends StatelessWidget {
  const BasePokemonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'basePokemonList',
      builder: (_) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final BasePokemon basePokemon = _.basePokemons[index];
            return ListTile(
              title: Text(basePokemon.name),
              subtitle: Text(basePokemon.url),
            );
          },
          itemCount: _.basePokemons.length,
        );
      },
    );
  }
}
