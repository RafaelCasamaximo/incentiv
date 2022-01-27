import 'package:flutter/material.dart';
import 'package:incentiv_app/widgets/info_card.dart';

class DetalhesPage extends StatefulWidget {
  const DetalhesPage({Key? key}) : super(key: key);

  static const String routeName = "/datalhes";

  @override
  State<DetalhesPage> createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  var imagem = "assets/placeholder.jpg";
  var nome = "Nome Completo";
  var descricao = "";
  var endereco = "";
  var horario = "";
  var telefone = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Detalhes",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Card(
          elevation: 0,
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset("assets/placeholder.jpg")),
                Card(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        "Nome Completo",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Descrição",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Isso daqui é um teste de descrição",
                            ),
                          ],
                        )),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Endereço",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Avenida Madre Leonida Milito, 545 - Bela Suíça",
                            ),
                          ],
                        )),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Horário de Funcionamento",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Segunda à Sexta-feira, 08h00 - 18h00",
                            ),
                          ],
                        )),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contatos",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            ListView(
                              shrinkWrap: true,
                              children: [
                                ListTile(
                                  title: Text("contato@juntosContraFome.com"),
                                  trailing:
                                      Icon(Icons.email, color: Colors.amber),
                                  onTap: () {},
                                ),
                                Divider(color: Colors.grey),
                                ListTile(
                                  title: Text("(43) 1234-5678"),
                                  trailing:
                                      Icon(Icons.phone, color: Colors.amber),
                                  onTap: () {},
                                ),
                                Divider(color: Colors.grey),
                                ListTile(
                                  title: Text("(43) 1234-5678"),
                                  trailing: Icon(
                                    Icons.message,
                                    color: Colors.amber,
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
