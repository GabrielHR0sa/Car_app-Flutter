class Marcas {
  final String mainImage;

  Marcas({
    required this.mainImage,
  });

  static List<Marcas> getMarcas() {
    return [
      Marcas(
        mainImage: 'assets/images/fiat.png',
      ),
      Marcas(
        mainImage: 'assets/images/volks.png',
      ),
      Marcas(
        mainImage: 'assets/images/chevrolet.png',
      ),
      Marcas(
        mainImage: 'assets/images/hyundai.png',
      ),
      Marcas(
        mainImage: 'assets/images/honda.png',
      ),
      Marcas(
        mainImage: 'assets/images/toyota.png',
      ),
      Marcas(
        mainImage: 'assets/images/peugeot.png',
      ),
    ];
  }
}
