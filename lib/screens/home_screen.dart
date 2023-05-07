import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:whatsargazo/utils/app_styles.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(40),    //Tab

                const headInfo(),

                const Gap(25),

                const InfoUserWidget(),

                const Gap(25),

                Container(    //Search bar
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4 ,
                      ),
                    ],
                  ),
                ),
                
                const Gap(25),

                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    textAlign: TextAlign.start,
                    "Información de hoy",
                    style: Styles.headLineStyle2,
                  ),
                ),
                
                const Gap(25),

                Container(    //Mapa
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 250),
                    
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            "assets/images/sargazoPreview.jpg"
                          )
                        )
                      ),
                ),

                const Gap(25),

                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    textAlign: TextAlign.start,
                    "Utilidades",
                    style: Styles.headLineStyle2,
                  ),
                ),

                const Gap(25),

                CustomCard1(),

                const Gap(20),

                CustomCard2(),

                const Gap(70)
              ],
            ),

          )
        ],
      )

    );

  }
}


class InfoUserWidget extends StatelessWidget {
  const InfoUserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 0, // Opcional: puedes especificar la proporción del espacio que ocupa este hijo en relación con otros hijos de Row.
          child: Container(
            alignment: Alignment.center,
            height: 50,
            child: const Icon(Icons.location_on, color: Colors.red, size: 40),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            height: 50,
            child: Text("Playa Gaviota Azul, Punta Cancun, Cancún, Q.R.",style: Styles.headLineStyle4,),
          ),
        ),
        SizedBox(width:20),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            height: 50,
            child: Text("Martes 31 de febrero, 2023, 12:45 PM", style: Styles.headLineStyle4,),
          ),
        ),
      ],
    );
  }
}


class headInfo extends StatelessWidget {
  const headInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(    //head Bar and icon
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido Usuario 1", style: Styles.headLineStyle1,
            ),
            const Gap(5),
            Text(
              "Tu ubicación actual e información es: ", style: Styles.headLineStyle3,
            ),
          ],
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage(
                "assets/images/logo1.png"
              )
            )
          ),
        )
      ],
    );
  }
}


