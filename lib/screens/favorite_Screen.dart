import 'package:flutter/material.dart';
import 'package:vidaomuerte/widgets/widget.dart';

class favoriteScreen extends StatelessWidget {
  const favoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            //category
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 120),
                child: Text(
                  'Tus favoritos',
                  style: TextStyle(
                    height: 1,
                    color: Color(0xFF001FBC),
                    fontFamily: 'Roboto',
                    fontSize: 34.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            //Popular items Widget
            NewestItemswidget2(),
          ],
        ),
        bottomNavigationBar: NavBar(currentRoute: 'favorito'));
  }
}
