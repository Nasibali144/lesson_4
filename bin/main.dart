import 'dart:io';

import 'services/clock_service.dart';
import 'services/lang_service.dart';

void main() {
   // print(LangService.tr("appName"));
   //
   // LangService.language = Language.ru;
   // print(LangService.tr("appName"));
   //
   // LangService.language = Language.uz;
   // print(LangService.tr("appName"));

   LangService.language = Language.uz;
   int? hour;
   int? minute;

   ClockService clockService = ClockService();
   stdout.writeln(LangService.tr("appName"));
   stdout.writeln(LangService.tr("createClock"));

   stdout.writeln(LangService.tr("hour"));
   hour = int.tryParse(stdin.readLineSync()!);

   stdout.writeln(LangService.tr("minute"));
   minute = int.tryParse(stdin.readLineSync()!);

   clockService.add(hour: hour!, minute: minute!);
}