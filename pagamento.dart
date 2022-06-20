import 'package:flutter/material.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({Key? key}) : super(key: key);

  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8EFE9),
      appBar: AppBar(
        centerTitle: false,
        title: const Icon(Icons.local_cafe),
        backgroundColor: const Color(0xFF3E2723),
      ),
      body: buildBody(),
    );
  }

  buildBody(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            child: Column(
              children:  [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage('http://cdn.onlinewebfonts.com/svg/img_297674.png'),
                    ),
                  ),
                ),
                Text('Forma de Pagamento',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children:  [
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Row(
                        children: [
                          Icon(Icons.pix),
                          Text("Pix"),
                        ],
                      ),

                    ),
                  ],
                ),
                Row(
                  children:  [
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Row(
                        children: [
                          Icon(Icons.attach_money_sharp),
                          Text("Dinheiro"),
                        ],
                      ),

                    ),
                  ],
                ),
                Row(
                  children:  [
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Row(
                        children: [
                          Icon(Icons.credit_card),
                          Text("Cartão"),
                        ],
                      ),

                    ),
                  ],
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Cup-o-cofee-no-spoon.svg/2560px-Cup-o-cofee-no-spoon.svg.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}