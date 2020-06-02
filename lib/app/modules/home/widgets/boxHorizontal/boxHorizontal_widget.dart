import 'package:flutter/material.dart';

class BoxHorizontalWidget extends StatelessWidget {

final double altura;
final String titulo;
final String subTitulo;
final Color cor01;
final Color cor02;

  

  const BoxHorizontalWidget({Key key, this.altura, this.titulo, this.subTitulo, this.cor01, this.cor02}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [cor01, cor02],
              begin: Alignment.topCenter,
              end: Alignment.centerRight)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              titulo,
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.check_circle,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(subTitulo,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
    );
  }
}
