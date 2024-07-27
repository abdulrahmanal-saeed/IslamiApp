import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/radio_image.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.99,

                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'إذاعة القرآن الكريم',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.skip_previous, size: 32),
                  Icon(Icons.play_arrow, size: 32),
                  Icon(Icons.skip_next, size: 32),
            ],
          ),
        ),
          ],

        ),
      ),
    );

  }
}
