import 'package:flutter/material.dart';

class Industry extends StatefulWidget {
  const Industry({super.key});

  @override
  State<Industry> createState() => _IndustryState();
}

class _IndustryState extends State<Industry> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _industries = [
    'Software & services',
    'Technology Hardware & Equiment',
    'Semiconductors & Semiconductor Equiment',
    'Pharmaceuticals',
    'Biotechnology',
    'Medical Devices & Supplies',
    'Banking',
    'Insurance',
    'Asset Management & Custody Banks',
    'Automobilles & Components',
    'Consumer Durables & Apparel',
    'Retailing'
  ];
  String _selectedIndustry = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: DropdownButton<String>(
                dropdownColor: Colors.black,
                icon: const Icon(Icons.arrow_downward, color: Colors.amber),
                hint: const Text('Select industry',
                    style: TextStyle(color: Colors.amber)),
                value: _selectedIndustry.isEmpty ? null : _selectedIndustry,
                items:
                    _industries.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? selectedItem) {
                  setState(() {
                    _selectedIndustry = selectedItem ?? '';
                  });
                },
                style: const TextStyle(
                    color: Colors.amber, backgroundColor: Colors.black),
              ),
            ),
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
                      label:
                          Text('Price', style: TextStyle(color: Colors.red))),
                  DataColumn(
                      label: Text('+/-', style: TextStyle(color: Colors.red))),
                  DataColumn(
                      label:
                          Text('+/- %', style: TextStyle(color: Colors.red))),
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
                        style:
                            TextStyle(color: Color.fromARGB(255, 103, 251, 5))))
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
    );
  }
}
