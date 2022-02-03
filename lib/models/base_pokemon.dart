class BasePokemon {
  final String name, url;

  BasePokemon({
    required this.name,
    required this.url
  });

  static BasePokemon fromJson(Map<String, dynamic> json){
    return BasePokemon(
      name: json['name'],
      url: json['url']
    );    
  }
}