/* import 'package:appfrontautos/widgets/botones.dart'; */
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class onboarding_Screens extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF001996);

  const onboarding_Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Register',
      onFinish: () {
        /*  Navigator.push(
          context,
          /* CupertinoPageRoute(
            builder: (context) => const RegisterPage(),
          ), */
        ); */
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
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
          'assets/autoverde.png',
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/autogris.png',
          fit: BoxFit.fill,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 450,
              ),
              Text(
                ' Garantía post venta en nuestras planta',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      Color(0xFF001996) /* Color(0xFFE65C00) color naranja */,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Tenemos un compromiso de calidad con nuestros usurarios.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE65C00),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
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
                height: 480,
              ),
              Text(
                'Tenemos el auto que tanto buscas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF001996),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Disponemos de una amplia selección de vehículos de todas las marcas.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE65C00),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
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
                height: 460,
              ),
              Text(
                'Comunicación sin intermediarios ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF001996),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Ahora puedes realizar la compra de tu próximo auto directamente con su vendedor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE65C00),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
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
