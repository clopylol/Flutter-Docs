import 'package:flutter/material.dart';

class DateTimePickerPage extends StatefulWidget {
  DateTimePickerPage({Key key}) : super(key: key);

  @override
  _DateTimePickerPageState createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<DateTimePickerPage> {
  DateTime selectedDate;
  TimeOfDay time;

  @override
  void initState() {
    super.initState();
    //Şuan ki tarih
    selectedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  _selectDate() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(DateTime.now().year - 3),
      lastDate: DateTime(DateTime.now().year + 3),
    );

    //Kullanıcı Bir Tarih Seçtiyse
    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  _selectTime() async {
    TimeOfDay t = await showTimePicker(
      context: context,
      initialTime: time,
    );

    //Kullanıcı Bir Tarih Seçtiyse
    if (t != null) {
      setState(() {
        time = t;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time Picker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.green[300], width: 1.5),
            ),
            child: ListTile(
              title: Text(
                  "Tarih: ${selectedDate.day}.${selectedDate.month}.${selectedDate.year} "),
              trailing: Icon(
                Icons.calendar_today,
                color: Colors.green,
              ),
              onTap: _selectDate,
            ),
          ),
          //
          //Time
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.blue[300], width: 1.5),
            ),
            child: ListTile(
              title: Text("Saat: ${time.hour}.${time.minute}"),
              trailing: Icon(
                Icons.schedule,
                color: Colors.blue,
              ),
              onTap: _selectTime,
            ),
          ),
        ],
      ),
    );
  }
}
