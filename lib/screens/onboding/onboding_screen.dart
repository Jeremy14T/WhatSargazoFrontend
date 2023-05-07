import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'components/animated_btn.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

// Let's run the app
// We are done with out scrren
// let me show you how to create the animation on RIVE
// On Next episode i will show you how to do this popup
// See you on the next one
class _OnboardingScreenState extends State<OnboardingScreen> {
  late RiveAnimationController _btnAnimationColtroller;

  @override
  void initState() {
    _btnAnimationColtroller = OneShotAnimation(
      "active",
      autoplay: false,
      // Let's restart the app again
      // No amination
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(      //mensaje confirmacion salir de la app
      onWillPop: () async {
        // Mostrar un diálogo de confirmación antes de salir de la aplicación
        showDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog (
            title: Text('¿Salir de la aplicación?'),
            content: Text('¿Estás seguro de que deseas salir?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Salir', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        );

        // Retornar falso para evitar que se cierre la aplicación inmediatamente
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            // At the end of the video i will show you
            // How to create that animation on Rive
            // Let's add blur
            Positioned(
              // height: 100,
              width: MediaQuery.of(context).size.width * 1.7,
              bottom: 200,
              left: 100,
              child: Image.asset("assets/Backgrounds/Spline.png"),
            ),
            Positioned.fill(
              child: BackdropFilter(
                // Now it's looks perfect
                // See how easy
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
              ),
            ),
            const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
            Positioned.fill(
              child: BackdropFilter(
                // Now it's looks perfect
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: const SizedBox(),
              ),
            ),
            // Let's add text
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: 260,
                      child: Column(
                        children: const [
                          Text(
                            "Consulta",
                            style: TextStyle(
                              fontSize: 59,
                              fontFamily: "Poppins",
                              height: 1.2,
                              
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Visita &",
                            style: TextStyle(
                              fontSize: 59,
                              fontFamily: "Poppins",
                              height: 1.2,
                              color: Colors.orange,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "Disfruta",
                            style: TextStyle(
                              fontSize: 59,
                              fontFamily: "Poppins",
                              height: 1.2,
                              
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Consulta el estado del sargazo actual, contribuye a nuestra comunidad o simpkemente chatea con nuestro bot!",
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 2),
                    AnimatedBtn(
                      btnAnimationColtroller: _btnAnimationColtroller,
                      // press: () {
                      //   _btnAnimationColtroller.isActive = true;
                      // },
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                        "Purchase includes access to 30+ courses, 240+ premium tutorials, 120+ hours of videos, source files and certificates.",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}