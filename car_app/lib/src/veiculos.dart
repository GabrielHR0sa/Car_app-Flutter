class Veiculos {
  final String image;
  final String nome;
  final String preco;
  final String marca;
  final String velocidade;

  Veiculos(
      {this.image = '',
      this.nome = '',
      this.preco = '',
      this.marca = '',
      this.velocidade = ''});

  static List<Veiculos> getVeiculos() {
    return [
      Veiculos(
          image: 'assets/images/onix.png',
          nome: 'Onix Ltz',
          preco: 'R\$ 65.000',
          marca: 'Chevrolet',
          velocidade: '220 Km/h'),
      Veiculos(
          image: 'assets/images/hb20.png',
          nome: 'Hb20',
          preco: 'R\$ 75.000',
          marca: 'Hyundai',
          velocidade: '230 Km/h'),
      Veiculos(
          image: 'assets/images/mobi.png',
          nome: 'Mobi',
          preco: 'R\$ 55.000',
          marca: 'Fiat',
          velocidade: '200 Km/h'),
      Veiculos(
          image: 'assets/images/civic.png',
          nome: 'Civic Gtx',
          preco: 'R\$ 105.000',
          marca: 'Honda',
          velocidade: '250 Km/h'),
      Veiculos(
          image: 'assets/images/corolla.png',
          nome: 'Corolla',
          preco: 'R\$ 125.000',
          marca: 'Toyota',
          velocidade: '210 Km/h'),
      Veiculos(
          image: 'assets/images/amarok.png',
          nome: 'Amarok',
          preco: 'R\$ 145.000',
          marca: 'Volkswagem',
          velocidade: '220 Km/h'),
      Veiculos(
          image: 'assets/images/208.png',
          nome: '208',
          preco: 'R\$ 85.000',
          marca: 'Peugeot',
          velocidade: '200 Km/h'),
    ];
  }
}
