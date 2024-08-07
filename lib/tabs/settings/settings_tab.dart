import 'package:flutter/material.dart';
import 'package:islami_app/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../app_theme.dart';

class SettingsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingsProvider _settingsProvider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الوضع المظلم',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Switch(
                  value: _settingsProvider.isDark,
                  activeTrackColor: _settingsProvider.isDark ? AppTheme.gold : AppTheme.lightPrimary,
                  onChanged: (isDark)=> _settingsProvider
                      .ChangeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light),
                  ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'اللغه',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _settingsProvider.language,
                    items: [
                      DropdownMenuItem(
                        value:'en',
                        child: Text('English',
                          style: Theme.of(context).textTheme.labelSmall,
                        )
                        ,),
                      DropdownMenuItem(
                        value:'ar',
                        child: Text('العربية',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ],
                    onChanged: (selectedlanguage){
                    if(selectedlanguage == null) return;
                    _settingsProvider.changeLanguage(selectedlanguage);
                    },
                  dropdownColor: _settingsProvider.isDark ? AppTheme.darkPrimary : AppTheme.lightPrimary,
                  borderRadius: BorderRadius.circular(10),
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
