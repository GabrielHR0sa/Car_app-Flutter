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
          height: altura * 0.142,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: marcas.length,
            itemBuilder: (context, index) {
              final marca = marcas[index];
              return Container(
                width: largura * 0.2,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                child: Image.asset(
                  marca.mainImage,
                  fit: BoxFit.fill,
                ),
              );
            },
          ),
        ),
        Container(
          height: altura * 0.49,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
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
                            padding: const EdgeInsets.all(20.0),
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: veiculo.nome,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const TextSpan(text: ' \n '),
                                  TextSpan(
                                    text: veiculo.preco,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 9),
                                  ),
                                  const TextSpan(text: '   '),
                                  TextSpan(
                                    text: veiculo.marca,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 9),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
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
      ]),
    );
  }
}
