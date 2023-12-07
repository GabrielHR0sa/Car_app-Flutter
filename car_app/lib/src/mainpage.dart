import 'package:app/src/marcas.dart';
import 'package:app/src/veiculos.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    final marcas = Marcas.getMarcas();
    final veiculos = Veiculos.getVeiculos();

    return Material(
      color: const Color.fromARGB(255, 235, 235, 235),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: altura * 0.06,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
              ),
              labelText: 'Pesquisar Veículo',
              filled: true,
              fillColor: const Color.fromARGB(255, 255, 255, 255),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
        SizedBox(
          height: altura * 0.1,
          width: largura * 1,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: marcas.length,
            itemBuilder: (context, index) {
              final marca = marcas[index];
              return Container(
                margin: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    marca.mainImage,
                    width: largura * 0.3,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          height: altura * 0.613,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Expanded(
            child: ListView.builder(
              itemCount: veiculos.length,
              itemBuilder: (context, index) {
                final veiculo = veiculos[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: altura * 0.36,
                      width: largura * 1,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 235, 235, 235),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              veiculo.image,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: veiculo.marca,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                    const TextSpan(text: ' '),
                                    TextSpan(
                                      text: veiculo.nome,
                                      style: const TextStyle(
                                          color: Colors.red,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const TextSpan(text: ' \n '),
                                    TextSpan(
                                      text: veiculo.preco,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    const TextSpan(text: ' \n '),
                                    TextSpan(
                                      text:
                                          'Velocidade máxima: ${veiculo.velocidade}',
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Ver Mais'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
