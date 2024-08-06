import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> with SingleTickerProviderStateMixin  {
  int counter = 0;
  String tasbeeh = "سبحان الله";
   double angle = 0;

  void incrementCounter() {
    setState(() {
      angle +=10;
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
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: incrementCounter,
      child: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 50),
                  child: Align(alignment: Alignment.center,
                      child: Image.asset('assets/images/head_sebha_logo.png',
                      height: 101,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: Align(alignment: Alignment.center,
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset('assets/images/body_sebha_logo.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'عدد التسبيحات',
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.lightPrimary, // لون الخلفية
                borderRadius: BorderRadius.circular(10), // تدوير الحواف
              ),
              child: Text(
                '$counter',
                style: TextStyle(fontSize: 25, color: Colors.white), // نص الرقم
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor:AppTheme.lightPrimary, padding: EdgeInsets.all(15) ),
              onPressed: incrementCounter,
              child: Text(tasbeeh, style: Theme.of(context).textTheme.headlineSmall,),
            ),
          ],
        ),
      ),
    );
  }
}
