import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatelessWidget {
  static const routeName = '/info';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Информация'),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Image.asset('assets/images/logo.jpg'),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.phone,
                        size: 33,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => launch('tel:2700612'),
                      child: Text(
                        '2-700-612',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 25,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Доставка осуществляется с ул. Газеты Звезда, 5. \n'
                      'от 0км - до 10км стоимость доставки 150р. \n'
                      'от 10км до 15км стоимость доставки 250р.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
