import 'package:flutter/material.dart';

class AvisoBeta extends StatelessWidget {
  const AvisoBeta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                "Versão de Teste!",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Text(
                "Esse aplicativo ainda está em desenvolvimento! Bugs e problemas são esperados. Caso algo ocorra entre em contato com: exemplo@gmail.com",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
