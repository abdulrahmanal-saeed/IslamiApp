import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> with SingleTickerProviderStateMixin  {
  int counter = 0;
  String tasbeeh = "سبحان الله";
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    )
      ..addListener(() {
        setState(() {});
      });
    _animation = Tween(begin: 0.0, end: 0.1).animate(_controller);
  }

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter > 33) {
        counter = 1;
        if (tasbeeh == "سبحان الله") {
          tasbeeh = "الحمدلله";
        } else if (tasbeeh == "الحمدلله") {
          tasbeeh = "الله اكبر";
        } else {
          tasbeeh = "سبحان الله";
        }
      }
      _controller.forward(from: 0.0);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: incrementCounter,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: _animation.value,
                  child: Image.asset('assets/images/body_sebha_logo.png',
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'عدد التسبيحات',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text(tasbeeh, style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
