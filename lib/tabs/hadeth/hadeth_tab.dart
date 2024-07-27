import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadeth/hadeth_details_screen.dart';

import '../../app_theme.dart';

class HadethTab extends StatelessWidget {
  final List<String> hadiths = List<String>.generate(50, (i) => "الحديث رقم ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/hadeth_logo.png',
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Divider(
                color: AppTheme.lightPrimary,
                thickness: 3,
              ),
              Text(
                'الأحاديث',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: AppTheme.lightPrimary,
                thickness: 3,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: hadiths.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap:() => Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
                  arguments: HadethDetailsArgs(hadith: hadiths[index], index: index)),
              child: Text(hadiths[index],
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,),
            ),
            separatorBuilder: (_,__) => SizedBox(height: 12),
          ),
        ),
      ],
    );
  }
}

class HadethDetailsArgs{
  String hadith;
  int index;

  HadethDetailsArgs({required this.hadith, required this.index});
}