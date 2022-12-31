import 'package:flutter/material.dart';

class Day28 extends StatefulWidget {
  const Day28({super.key});

  @override
  State<Day28> createState() => _Day28State();
}

class _Day28State extends State<Day28> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: SelectableText(
              "Clash of Clans is a freemium " +
                  "mobile strategy video game developed and published " +
                  "by Finnish game developer Supercell. " +
                  "The game was released for iOS platforms on August 2, 2012, " +
                  "and on Google Play for Android on October 7, 2013.",
              enableInteractiveSelection: true,
              toolbarOptions: ToolbarOptions(
                copy: true,
                cut: true,
                paste: true,
                selectAll: true,
              ),
            ),
          ),
        ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(sortAscending: true, sortColumnIndex: 2, columns: [
                  DataColumn(
                    label: Text("Name"),
                    numeric: false,
                  ),
                  DataColumn(label: Text("Date"), numeric: false),
                  DataColumn(
                    label: Text("Age"),
                    numeric: true,
                    onSort: (columnIndex, ascending) => true,
                  ),
                  DataColumn(label: Text("City"), numeric: false),
                 
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text("Ahmed")),
                    DataCell(Text("24/04/1999")),
                    DataCell(Text("21")),
                    DataCell(Text("cairo")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Mohamed")),
                    DataCell(Text("11/07/2005")),
                    DataCell(Text("21")),
                    DataCell(Text("cairo")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(
                      Text("Fill Name"),
                      placeholder: true,
                      showEditIcon: true,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Card(
                              child: Center(child: Text("You can edit here...."))),
                        );
                      },
                    ),
                    DataCell(Text("15/08/1998")),
                    DataCell(Text("22")),
                    DataCell(Text("cairo")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Ali")),
                    DataCell(Text("13/09/1999")),
                    DataCell(Text("21")),
                    DataCell(Text("cairo")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(Text("mohamed")),
                    DataCell(Text("25/04/1999")),
                    DataCell(Text("21")),
                    DataCell(Text("cairo")),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(Text("mahmuod")),
                    DataCell(Text("30/09/1999")),
                    DataCell(Text("21")),
                    DataCell(Text("cairo")),
                    
                  ]),
                ]),
              ),
            ],
          ),
        )
        );
  }
}
