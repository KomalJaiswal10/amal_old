import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ExtSizedBox on SizedBox {
  SizedBox sizedWidth({double 
  width = 10.0}) => SizedBox(
        width: width,
      );
  SizedBox sizedHeight({double height = 10.0}) => SizedBox(
        height: height,
      );
}

extension ExtDateTime on DateTime {
  String getDate({bool isReverse = false}) =>
      DateFormat(isReverse ? "yyyy-MM-dd" : "dd-MM-yyyy").format(this);

  String getTime() => DateFormat(DateFormat.HOUR24_MINUTE_SECOND).format(this);

  String dateWithMonthYear() =>
      DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY).format(this);

  String dateWithMonth() => DateFormat.MMMMEEEEd().format(this);
}
