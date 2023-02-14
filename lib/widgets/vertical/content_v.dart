import 'package:flutter/material.dart';

import 'appbar.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenheigth = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.yellow.shade100,
            child: Column(
              children: [
                const Text(
                  "Content",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  width: 200,
                  height: 90,
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Text("Altura: $screenheigth"),
                      Text("Altura: $screenwidth"),
                    ],
                  ),
                ),
                const VerticalAppBar(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  height: 400,
                  color: Colors.blue.shade100,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.green.shade100,
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "Titulo de producto",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 150,
                                    child: Text(
                                      "Hola, soy una descripcón de producto - Hola, soy una descripcón de producto",
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.favorite)),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child:
                                              const Text("Añadir al carrito"))
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              Image.asset(
                                "assets/img/Foto.jpg",
                                height: 100,
                                width: 100,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
