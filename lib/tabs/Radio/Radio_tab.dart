import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../app_theme.dart';
import '../settings/settings_provider.dart';

class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingsProvider _settingsProvider = Provider.of<SettingsProvider>(context);
    return  Container(
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
              AppLocalizations.of(context)!.quranRadio,
              style: Theme.of(context).textTheme.headlineSmall,

            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.skip_previous, size: 32, color:_settingsProvider.isDark ? AppTheme.gold : AppTheme.lightPrimary,),
                  Icon(Icons.play_arrow, size: 32, color:_settingsProvider.isDark ? AppTheme.gold : AppTheme.lightPrimary,),
                  Icon(Icons.skip_next, size: 32, color:_settingsProvider.isDark ? AppTheme.gold : AppTheme.lightPrimary,),
            ],
          ),
        ),
          ],

        ),
      ),
    );

  }
}
