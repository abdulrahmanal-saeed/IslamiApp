import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadeth/hadeth.dart';
import 'package:provider/provider.dart';
import '../../app_theme.dart';
import '../settings/settings_provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "/HadethDetailsScreen";
  @override
  Widget build(BuildContext context) {
    SettingsProvider _settingsProvider = Provider.of<SettingsProvider>(context);
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_settingsProvider.backgroundImagePath),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(hadeth.title)
        ),
        body:
          Container(
          padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.06 ,
          horizontal: MediaQuery.of(context).size.width * 0.07),
      decoration: BoxDecoration(
          color: _settingsProvider.isDark ? AppTheme.darkPrimary : AppTheme.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: hadeth.content.isEmpty
          ? Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).primaryColor,
        ),
      )
      : ListView.builder(itemBuilder: (_, index) => Text(
        hadeth.content[index],
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,),
        itemCount: hadeth.content.length,
      ),
    ),
      ),
    );
  }
}
