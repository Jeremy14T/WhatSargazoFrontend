import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(    //Card 1
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: const BoxDecoration(
        color: Color(0xFF7553F6),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  "Consultar Sargazo",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                  ),
                  const Text(
                    "Consulta el estado de hoy",
                    style: TextStyle(color: Colors.white60, fontSize: 16),
                  )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              color: Colors.white70,
            ),
          ),

          const SizedBox(width: 8),

          Container(    //img card 1
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/consulta.png"
              )
            )
          ),
          )
        ],
      ),
    );
  }
}

class CustomCard2 extends StatelessWidget {
  const CustomCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(    //Card 1
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 23, 171, 190),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  "Contribuir",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                  ),
                  const Text(
                    "Sube fotos y aporta a la App",
                    style: TextStyle(color: Colors.white60, fontSize: 16),
                  )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              color: Colors.white70,
            ),
          ),

          const SizedBox(width: 8),

          Container(    //img card 2
          height: 55,
          width: 55,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/contribuir.png"
              )
            )
          ),
          )
        ],
      ),
    );
  }
}