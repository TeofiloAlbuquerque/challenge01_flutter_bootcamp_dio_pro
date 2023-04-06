import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title});

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _counter = 0;
  Color? _colorText;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _colorText = _getColorText(_counter);
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      _colorText = _getColorText(_counter);
    });
  }

  Color _getColorText(int counter) {
    if (_counter < 0) {
      return Colors.red;
    } else if (_counter > 0) {
      return Colors.blue;
    } else {
      return Colors.black;
    }
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
              'Mude as cores com os botões \npara positivo ou negativo:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$_counter',
              style: TextStyle(
                color: _colorText,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
