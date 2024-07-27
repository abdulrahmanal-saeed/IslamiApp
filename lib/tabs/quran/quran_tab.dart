import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/tabs/quran/sura_details_screen.dart';

class QuranTab extends StatefulWidget {
  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List <String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
    ''
  ];

  List<String>  versesNumber = [
    '7',
    '286',
    '200',
    '176',
    '120',
    '165',
    '206',
    '75',
    '129',
    '109',
    '123',
    '111',
    '43',
    '52',
    '99',
    '128',
    '111',
    '110',
    '98',
    '135',
    '112',
    '78',
    '118',
    '64',
    '77',
    '227',
    '93',
    '88',
    '69',
    '60',
    '34',
    '30',
    '73',
    '54',
    '45'
    '83',
    '182',
    '88',
    '75',
    '85',
    '54',
    '53',
    '89',
    '59',
    '37',
    '35',
    '38',
    '29',
    '18',
    '45',
    '60',
    '49',
    '62',
    '55',
    '78',
    '96',
    '29',
    '22',
    '24',
    '13',
    '14',
    '11',
    '11',
    '18',
    '12',
    '12',
    '30',
    '52',
    '52',
    '44',
    '28',
    '28',
    '20',
    '56',
    '40',
    '31',
    '50',
    '40',
    '46',
    '42',
    '52',
    '29',
    '19',
    '36',
    '25',
    '22',
    '17',
    '19',
    '26',
    '30',
    '20',
    '15',
    '21',
    '11',
    '8',
    '5',
    '19',
    '5',
    '8',
    '8',
    '11',
    '11',
    '8',
    '3',
    '9',
    '5',
    '4',
    '6',
    '3',
    '6',
    '3',
    '5',
    '4',
    '5',
    '6'
    ''
  ];

  late ScrollController _scrollController1;
  late ScrollController _scrollController2;

  @override
  void initState() {
    super.initState();
    _scrollController1 = ScrollController();
    _scrollController2 = ScrollController();

    // Sync scrolling of both list views
    _scrollController1.addListener(() {
      if (_scrollController1.offset != _scrollController2.offset) {
        _scrollController2.jumpTo(_scrollController1.offset);
      }
    });

    _scrollController2.addListener(() {
      if (_scrollController2.offset != _scrollController1.offset) {
        _scrollController1.jumpTo(_scrollController2.offset);
      }
    });
  }

  @override
  void dispose() {
    _scrollController1.dispose();
    _scrollController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/qur2an_screen_logo.png',
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        SizedBox(height: 12,),
        Table(
          border: TableBorder.all(color: Colors.brown, width: 2),
          children: [
            TableRow(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      'عدد الآيات',

                      style:  Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      'اسم السورة',
                      style:  Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => GestureDetector(
                    onTap:() => Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
                        arguments: SuraDetailsArgs(suraName: suraNames[index], index: index)),
                    child: Text(versesNumber[index],
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,),
                  ),
                  controller: _scrollController1,
                  itemCount: versesNumber.length,
                  separatorBuilder: (_,__) => SizedBox(height: 12),
                ),
              ),
              VerticalDivider(
                width: 3,
                thickness: 3,
                color: AppTheme.lightPrimary,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => GestureDetector(
                    onTap:() => Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
                        arguments: SuraDetailsArgs(suraName: suraNames[index], index: index)),
                    child: Text(suraNames[index],
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,),
                  ),
                  controller: _scrollController2,
                  itemCount: suraNames.length,
                  separatorBuilder: (_,__) => SizedBox(height: 12),
                ),
              ),





            ],
          ),
        ),
      ],
    );
  }


}

class SuraDetailsArgs{
  String suraName;
  int index;

  SuraDetailsArgs({required this.suraName, required this.index});
}

/*

 */

/*
 Center(
                child: Text(
                  'اسم السورة',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
 */