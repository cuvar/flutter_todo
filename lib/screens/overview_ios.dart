import 'package:flutter/cupertino.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key, required this.title});
  final String title;

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            CupertinoButton.filled(
                onPressed: _incrementCounter, child: const Text("click me "))
          ],
        ),
      ),
    );
  }
}
