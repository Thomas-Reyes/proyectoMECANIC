/* import 'package:appfrontautos/widgets/botones.dart'; */
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/customText.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class onboarding_Screens extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF001996);

  const onboarding_Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
        ),
      ),
      /*    trailing: Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ), */
      trailingFunction: () {
        /* Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const LoginPage(),
          ),
        ); */
      },
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/autorojo.png',
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/autogris.png',
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/autoverde.png',
          fit: BoxFit.fill,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 410,
              ),
              Text(
                ' Garantía post venta en nuestras planta',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color:
                      Color(0xFF001996) /* Color(0xFFE65C00) color naranja */,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Tenemos un compromiso de calidad con nuestros usurarios.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE65C00),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              botonesprincipal(),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 440,
              ),
              Text(
                'Tenemos el auto que  tanto buscas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color:
                      Color(0xFF001996) /* Color(0xFFE65C00) color naranja */,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Disponemos de una amplia selección de vehículos de todas las marcas.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE65C00),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              botonesprincipal(),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 470,
              ),
              Text(
                'Comunicación sin intermediarios ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color:
                      Color(0xFF001996) /* Color(0xFFE65C00) color naranja */,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Ahora puedes realizar la compra de tu próximo auto directamente con su vendedor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE65C00),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              botonesprincipal(),
            ],
          ),
        ),
      ],
    );
  }
}
