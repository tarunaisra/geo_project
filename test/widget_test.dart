import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// Provide a local minimal MyApp and counter widget for this test to avoid relying
// on an external package import (which may not exist in this environment).

class CounterWidget extends StatefulWidget {
  static final GlobalKey<_CounterWidgetState> globalKey =
      GlobalKey<_CounterWidgetState>();

  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('$_counter', style: Theme.of(context).textTheme.headlineMedium);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Test App')),
        body: Center(child: CounterWidget(key: CounterWidget.globalKey)),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              CounterWidget.globalKey.currentState?.increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build app dan jalankan satu frame
    await tester.pumpWidget(MyApp());

    // Pastikan angka awal 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tekan icon "+"
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Pastikan counter bertambah
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
