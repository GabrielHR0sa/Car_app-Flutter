import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({super.key});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        color: const Color.fromARGB(255, 53, 53, 53),
        height: altura * 0.805,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(child: Image.asset('assets/images/onix.png')),
            ),
            Container(
              height: altura * 0.43,
              width: largura * 1,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 235, 235, 235),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Chevrolet Onix Ltz',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            '(4.5)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Ser considerado o carro mais econômico* e seguro da categoria não é para qualquer um. Mas o melhor mesmo é ser a escolha para te acompanhar em todos os caminhos, com o que há de mais moderno em tecnologia, design e performance.',
                      style: TextStyle(
                          fontSize: 10, color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: altura * 0.136,
                          width: largura * 0.25,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 184, 184, 184),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipOval(
                                child: Container(
                                    width: 30,
                                    height: 30,
                                    color: const Color.fromARGB(
                                        255, 235, 235, 235),
                                    child: const Icon(
                                        Icons.airline_seat_recline_extra)),
                              ),
                              Text(
                                'Total  \n de ascentos',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              const Text(
                                '5 Ascentos',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: altura * 0.136,
                          width: largura * 0.25,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 184, 184, 184),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipOval(
                                child: Container(
                                    width: 30,
                                    height: 30,
                                    color: const Color.fromARGB(
                                        255, 235, 235, 235),
                                    child: const Icon(Icons.speed)),
                              ),
                              Text(
                                'Velocidade  \n máxima',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              const Text(
                                '200 Km/H',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: altura * 0.136,
                          width: largura * 0.25,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 184, 184, 184),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipOval(
                                child: Container(
                                    width: 30,
                                    height: 30,
                                    color: const Color.fromARGB(
                                        255, 235, 235, 235),
                                    child: const Icon(Icons
                                        .settings_input_composite_rounded)),
                              ),
                              Text(
                                'Potência \n do motor',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              const Text(
                                '500 HP',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Preço: ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10)),
                              TextSpan(text: ' \n '),
                              TextSpan(
                                  text: 'RS 65.000',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: altura * 0.05,
                          width: largura * 0.5,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Comprar'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 53, 53, 53),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
