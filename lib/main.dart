import 'package:flutter/material.dart';
import 'calculadora.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                        //alignment: Alignment.center,
                        // color: Colors.red,
                        // child: const Text('Primeira Coluna:'),
                        ),   
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                      child: const Calculadora(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        //alignment: Alignment.center,
                        //color: Colors.amber,
                        //child: const Text('Terceira coluna:'),
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                //alignment: Alignment.center,
                //color: Colors.green,
                //child: const Text('Layout Inferior:'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Incremennt',
          child: const Icon(Icons.add)),
    );
  }
}
