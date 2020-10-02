import 'package:flutter/cupertino.dart' as c;
import 'package:flutter/widgets.dart';
// Files
import 'package:star_book/screens/preferance_sheet.dart';
import 'package:star_book/utils/bottom_sheet.dart';
import 'package:star_book/widgets/month.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return c.CupertinoPageScaffold(
      backgroundColor: c.CupertinoColors.systemBackground,
      navigationBar: c.CupertinoNavigationBar(
        backgroundColor: c.CupertinoColors.systemBackground,
        trailing: PreferanceButton(),
        border: null,
      ),
      child: SafeArea(child: Month(month: 10, year: 2020)),
    );
  }
}

class PreferanceButton extends StatelessWidget {
  final Function onTap = (context) {
    bottomSheet(context: context, child: PreferanceSheet());
    return null;
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(context),
      child: Icon(
        IconData(0xf3b0,
            fontFamily: c.CupertinoIcons.iconFont,
            fontPackage: c.CupertinoIcons.iconFontPackage),
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}