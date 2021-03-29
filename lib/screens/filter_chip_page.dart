import 'package:flutter/material.dart';

class FilterChipPage extends StatefulWidget {
  FilterChipPage({Key key}) : super(key: key);

  @override
  _FilterChipPageState createState() => _FilterChipPageState();
}

class _FilterChipPageState extends State<FilterChipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Chip Using'),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text(
                  'Personel Seç',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Wrap(
                  spacing: 5,
                  runSpacing: 3,
                  children: [
                    FilterChipWidget(chipName: 'Berkay'),
                    FilterChipWidget(chipName: 'Salih'),
                    FilterChipWidget(chipName: 'Sinan'),
                    FilterChipWidget(chipName: 'Ertem'),
                    FilterChipWidget(chipName: 'Ahmet'),
                    FilterChipWidget(chipName: 'Rasim'),
                    FilterChipWidget(chipName: 'Onur'),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          //
          // 2. Kısım
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Hayvan Seç',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    FilterChipWidget(chipName: 'Dog'),
                    FilterChipWidget(chipName: 'Cat'),
                    FilterChipWidget(chipName: 'Cow'),
                    FilterChipWidget(chipName: 'Bird'),
                    FilterChipWidget(chipName: 'Leon'),
                    FilterChipWidget(chipName: 'Canary'),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class FilterChipWidget extends StatefulWidget {
  final String chipName;
  FilterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _FilterChipWidgetState createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      selected: _isSelected,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Colors.orange[300],
    );
  }
}
