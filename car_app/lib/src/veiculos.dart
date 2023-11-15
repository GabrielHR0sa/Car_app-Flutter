class Veiculos {
  final String image;
  final String nome;
  final String preco;
  final String marca;

  Veiculos({this.image = '', this.nome = '', this.preco = '', this.marca = ''});

  static List<Veiculos> getVeiculos() {
    return [
      Veiculos(
          image: 'assets/images/onix.png',
          nome: 'Onix Ltz',
          preco: 'RS 65.000',
          marca: 'Chevrolet'),
      Veiculos(
          image: 'assets/images/hb20.png',
          nome: 'Hb20',
          preco: 'RS 75.000',
          marca: 'Hyundai'),
      Veiculos(
          image: 'assets/images/mobi.png',
          nome: 'Mobi',
          preco: 'RS 55.000',
          marca: 'Fiat'),
      Veiculos(
          image: 'assets/images/onix.png',
          nome: 'Onix Ltz',
          preco: 'RS 65.000',
          marca: 'Chevrolet'),
      Veiculos(
          image: 'assets/images/hb20.png',
          nome: 'Hb20',
          preco: 'RS 75.000',
          marca: 'Hyundai'),
      Veiculos(
          image: 'assets/images/mobi.png',
          nome: 'Mobi',
          preco: 'RS 55.000',
          marca: 'Fiat'),
    ];
  }
}
