import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Emi Fitriani', 'Vivi Tri R', 'Lea Dian W', 'Nurul',
    'Abdul Shakur', 'Zaenun', 'Nur Kholiq', 'Muhtarulloh',
  ];
  var listWarna = [
    Colors.red, Colors.purple, Colors.teal, Colors.lime,
    Colors.indigo, Colors.deepPurple, Colors.cyan,
    Colors.blue, Colors.yellow
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(35, 35),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'Apa kabar',
            textDirection: TextDirection.ltr,
          ),
          Text(
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length]
            ),
          ),
        ],
      ),
    );
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(
    MaterialApp(
      title: 'EMI FITRIANI | STI202102277',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('EMI FITRIANI | STI202102277'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              teksUtama
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: const Icon(Icons.refresh),
          backgroundColor: Colors.blue,
          onPressed: teksUtama.state.incrementIndex,
        ),
      ),
    ),
  );
}

