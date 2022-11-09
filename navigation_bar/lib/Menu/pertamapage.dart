import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:intl/intl.dart';

class pertamapage extends StatefulWidget {
  const pertamapage({super.key});

  @override
  State<pertamapage> createState() => _pertamapageState();
}

class _pertamapageState extends State<pertamapage> {
  DateTime? dateTimenow = DateTime.now(), dateTimeTomorrow, picked_date;
  var year, month, day;
  TimeOfDay? picked_time, selectedTime = TimeOfDay.now();

  Future<Null> getDate(BuildContext context) async {
    picked_date = await showDatePicker(
        context: context,
        initialDate: dateTimenow!,
        firstDate: DateTime(dateTimenow!.year - 1),
        lastDate: DateTime(dateTimenow!.year + 1));
    if (picked_date != null && picked_date != dateTimenow) {
      setState(() {
        dateTimenow = picked_date;
      });
    }
  }

  Future<Null> getTime(BuildContext context) async {
    picked_time = await showTimePicker(
      context: context,
      initialTime: selectedTime!,
    );
    log(picked_time.toString());

    if (picked_time != null && picked_time != selectedTime) {
      setState(() {
        selectedTime = picked_time;
        log("test" + picked_time.toString());
      });
    }
  }

  void dateTime_method() {
    dateTimenow = new DateTime.now();
    dateTimeTomorrow = dateTimenow!.add(const Duration(days: 1));
    year = dateTimeTomorrow!.year;
    month = dateTimeTomorrow!.month;
    day = dateTimeTomorrow!.day;

    var data = DateFormat('HH:mm:ss').format(dateTimenow!);
    var data1 = DateFormat('dd MMM yyyy').format(dateTimenow!);
    var data2 = DateFormat('HH:mm').format(dateTimenow!);
    var data3 = DateFormat('HH:mm:ss').format(dateTimenow!);
    var data4 = DateFormat('yyyy-MM-dd').format(dateTimenow!);
    var data5 = DateTime.now().add(Duration(days: -1));

    log("Hari ini =   " + data1.toString());
    log("Jam      =   " + data2.toString());
    log("Detik ini=   " + data3.toString());
    log("Data54   =   " + data4.toString());
    log("Data 5   =   " + data5.toString());
    log("Tahun    =   " + year.toString());
    log("Bulan    =   " + month.toString());
    log("Hari ke  =   " + day.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              getDate(context);
            },
            child: Text("Test DatePicker"),
          ),
          MaterialButton(
            onPressed: () {
              getTime(context);
            },
            child: Text("Test TimePicker"),
          ),
          Text("${dateTimenow.toString().substring(0, 10)}"),
          Text("${selectedTime.toString().substring(10, 15)}"),
        ],
      ),
    );
  }
}
