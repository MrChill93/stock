import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CoverWarrants extends StatefulWidget {
  const CoverWarrants({super.key});

  @override
  State<CoverWarrants> createState() => _CoverWarrantsState();
}

class _CoverWarrantsState extends State<CoverWarrants> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _symbols = ['ACB', 'FPT', 'MHN', 'GAS'];
  final List<String> _issuers = ['HSC', 'ACBS', 'VCB', 'VIB'];
  String _selectedSymbol = '';
  String _selectedIssuer = '';
  bool _showDatePicker = false;
  late DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: () {
          setState(() {
            if (_showDatePicker) {
              _showDatePicker = false;
            }
          });
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: DropdownButton<String>(
                    dropdownColor: Colors.black,
                    icon: const Icon(Icons.arrow_downward, color: Colors.amber),
                    hint: const Text('Symbol',
                        style: TextStyle(color: Colors.amber)),
                    value: _selectedSymbol.isEmpty ? null : _selectedSymbol,
                    items:
                        _symbols.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? selectedItem) {
                      setState(() {
                        _selectedSymbol = selectedItem ?? '';
                      });
                    },
                    style: const TextStyle(
                        color: Colors.amber, backgroundColor: Colors.black),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: DropdownButton<String>(
                    dropdownColor: Colors.black,
                    icon: const Icon(Icons.arrow_downward, color: Colors.amber),
                    hint: const Text('Issuer',
                        style: TextStyle(color: Colors.amber)),
                    value: _selectedIssuer.isEmpty ? null : _selectedIssuer,
                    items:
                        _issuers.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? selectedItem) {
                      setState(() {
                        _selectedIssuer = selectedItem ?? '';
                      });
                    },
                    style: const TextStyle(
                        color: Colors.amber, backgroundColor: Colors.black),
                  ),
                ),
                InkWell(
                  child: Row(children: const [
                    Text(
                      'Choose date',
                      style: TextStyle(fontSize: 16, color: Colors.amber),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.date_range,
                      color: Colors.amber,
                    )
                  ]),
                  onTap: () {
                    setState(() {
                      _showDatePicker = true;
                    });
                  },
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    columns: const [
                      DataColumn(
                          label: Text(
                        'Symbol',
                        style: TextStyle(color: Colors.red),
                      )),
                      DataColumn(
                          label: Text('Price',
                              style: TextStyle(color: Colors.red))),
                      DataColumn(
                          label:
                              Text('+/-', style: TextStyle(color: Colors.red))),
                      DataColumn(
                          label: Text('+/- %',
                              style: TextStyle(color: Colors.red))),
                      DataColumn(
                          label: Text('TotalVol',
                              style: TextStyle(color: Colors.red))),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text("ABC",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("123.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("15.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1345",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5))))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("FPT",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("13.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("2.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("15.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("145",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("SHB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("3.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("15.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1345",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VIC",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("30.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("15.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1785",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("VCB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("43.1",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("1.02",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("65.2",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                        DataCell(Text("45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 103, 251, 5)))),
                      ]),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      if (_showDatePicker)
        Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: SfDateRangePicker(
              backgroundColor: Colors.amber,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                if (args.value is PickerDateRange) {
                  setState(() {
                    _startDate = ((args.value as PickerDateRange).startDate) ??
                        _startDate;
                    _endDate =
                        ((args.value as PickerDateRange).endDate) ?? _endDate;
                  });
                }
              },
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 3))),
            ))
    ]);
  }
}
