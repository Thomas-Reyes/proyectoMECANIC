import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class favoriteScreen extends StatelessWidget {
  const favoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            //app bar widget

            /*  AppbarWidget(), */

            //category
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  'Tus favoritos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'agregar tarjetas de autos favoritos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),

            //Popular items Widget
            PopularItemsWidget(),
          ],
        ),
        bottomNavigationBar: NavBar(currentRoute: 'favorito'));
  }
}
