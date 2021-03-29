import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  BottomSheetPage({Key key}) : super(key: key);

  @override
  _BottomSheetPageState createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Open BottomSheet'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                _settingModalBottomSheet(context);
              },
            ),
            ElevatedButton(
              child: Text('Open BottomSheet'),
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                _settingModalBottomSheet2(context);
              },
            ),
            ElevatedButton(
              child: Text('Open BottomSheet Radius'),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {
                _settingModalBottomSheet3(context);
              },
            ),
          ],
        ),
      )),
    );
  }

  //1. Button
  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (cnxt) {
        return Container(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Person'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.museum),
                title: Text('Museum'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.cloud),
                title: Text('Cloud'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.adjust),
                title: Text('Adjust'),
                onTap: () => {},
              ),
            ],
          ),
        );
      },
    );
  }

  //2.Button
  void _settingModalBottomSheet2(context) {
    showModalBottomSheet(
      context: context,
      builder: (cnxt) {
        return Container(
          //Ekranın Yüzde 40'ını Kaplar
          height: MediaQuery.of(context).size.height * 0.4,
          child: Center(
            child: Text('BOTTOM SHEEET'),
          ),
        );
      },
    );
  }

  void _settingModalBottomSheet3(context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (cnxt) {
        return Container(
          //Ekranın Yüzde 40'ını Kaplar
          height: MediaQuery.of(context).size.height * 0.4,
          child: Center(
            child: Text('BOTTOM SHEEET'),
          ),
        );
      },
    );
  }
}
