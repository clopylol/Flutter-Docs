import 'package:flutter/material.dart';

class DataTablePage extends StatefulWidget {
  DataTablePage({Key key}) : super(key: key);

  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table'),
      ),
      body: Center(
        child: DataTable(
          columns: [
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: [
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Berkay')),
                DataCell(Text('21')),
                DataCell(Text('Comp Eng.')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Salih')),
                DataCell(Text('30')),
                DataCell(Text('Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Ahmet')),
                DataCell(Text('27')),
                DataCell(Text('Refeere')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
