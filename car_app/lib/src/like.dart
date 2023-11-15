import 'package:app/src/veiculos.dart';
import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    final veiculos = Veiculos.getVeiculos();
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Material(
      color: const Color.fromARGB(255, 235, 235, 235),
      child: SizedBox(
        height: altura * 0.76,
        width: largura * 1,
        child: ListView.builder(
            itemCount: veiculos.length,
            itemBuilder: (context, index) {
              final veiculo = veiculos[index];
              return Container(
                margin: const EdgeInsets.all(10),
                height: altura * 0.2,
                width: largura * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: altura * 0.15,
                          width: largura * 0.5,
                          child: Image.asset(veiculo.image)),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(children: [
                            TextSpan(
                              text: veiculo.nome,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const TextSpan(text: ' \n '),
                            TextSpan(
                              text: 'Preço: ${veiculo.preco}',
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const TextSpan(text: ' \n '),
                            TextSpan(
                              text: veiculo.marca,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red.withOpacity(0.5)),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: altura * 0.05,
                          width: largura * 0.38,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('Compre agora')),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
