import 'package:flutter/material.dart';

class Day42 extends StatefulWidget {
  const Day42({super.key});

  @override
  State<Day42> createState() => _Day42State();
}

class _Day42State extends State<Day42> {
  TimeOfDay currentTime = TimeOfDay.now();
  DateTime currentDate = DateTime.now();
  DateTimeRange currentDateRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: ListTile(
                  onTap: () async {
                    TimeOfDay? seletedTime = await showTimePicker(
                      context: context,
                      initialTime: currentTime,
                    );
                    setState(() {
                      currentTime = seletedTime ?? currentTime;
                    });
                  },
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Time ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: '${currentTime.hour % 12 != 0 ? currentTime.hour % 12 : 12}hr' +
                                ':${currentTime.minute}mins' +
                                ' ${currentTime.period == DayPeriod.am ? 'am' : 'pm'}',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  trailing: Icon(Icons.timelapse_outlined),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: ListTile(
                  onTap: () async {
                    DateTimeRange? seletedDateRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(1990, 1, 1),
                      lastDate: DateTime(2100, 12, 31),
                      initialDateRange: currentDateRange,
                    );
                    setState(() {
                      currentDateRange = seletedDateRange ?? currentDateRange;
                    });
                  },
                  title: Text('Starts - ${currentDateRange.start.day}' +
                      '/${currentDateRange.start.month}' +
                      '/${currentDateRange.start.year}' +
                      '\nEnds - ${currentDateRange.end.day}' +
                      '/${currentDateRange.end.month}' +
                      '/${currentDateRange.end.year}'),
                  trailing: Icon(Icons.date_range),
                ),
              ),
            ),
            Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: ListTile(
            onTap: () async {
              // ! We can pick the date by [showDatePicker]....

              DateTime? selectedDate = await showDatePicker(
                context: context, // ! need to pass the context....
                initialDate: currentDate, // ! initial selected date...
                firstDate:
                    DateTime(1990, 1, 1), // ! boundary of dates from starts....
                lastDate:
                    DateTime(2100, 12, 31), // ! boundary of dates from ends....
              );
              setState(() {
                // ! selectedDate is null then set back to currentDate....
                // ! with dart null safety operator....
                currentDate = selectedDate ?? currentDate;
              });
            },
            title: Text(
                '${currentDate.day}/${currentDate.month}/${currentDate.year}'),
            trailing: Icon(Icons.date_range),
          ),
        ),
      ),
          ],
        ));
  }
}
