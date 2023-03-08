import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var cedula = "1001";
    var nombre = "Alex Vacca";
    var edad = 50;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        cedula: cedula,
        nombre: nombre,
        edad: edad,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final String cedula;
  final String nombre;
  final int edad;

  const MyHomePage(
      {super.key,
      required this.title,
      required this.cedula,
      required this.nombre,
      required this.edad});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador: ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Icon(Icons.delete_forever)),
                ElevatedButton(
                    onPressed: () {}, child: const Icon(Icons.clear_all)),
                ElevatedButton(onPressed: () {}, child: const Icon(Icons.add)),
              ],
            ),
            Text("Nombre: ${widget.nombre}"),
            Text("Cedula: ${widget.cedula}"),
            Text("Edad: ${widget.edad}"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
