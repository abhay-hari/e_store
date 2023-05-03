import 'package:e_store/Widgets/table%20row.dart';
import 'package:flutter/material.dart';
import '../Widgets/TextFormField.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenCart extends StatefulWidget {
  const ScreenCart({super.key});

  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: _formKey,
        child: ListView(
          children: [
            SizedBox(
                height: 38,
                width: 370,
                child: Image.asset("assets/images/logo/logo.png")),
            textfield(
                hintText: "search",
                suffixicon: Icons.search,
                suffixIconsize: 23,
                suffixIconColor: 0xffFF6F61,
                // suffixicon: Icons.search,
                // suffixIconsize: 16,
                // suffixIconColor: 0xffFF6F61,
                controller: searchController,
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return null;
                  }
                })),
            Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                // color: Colors.amber,
                child: Table(
                  columnWidths: {
                    0: FractionColumnWidth(0.29),
                    1: FractionColumnWidth(0.1),
                    2: FractionColumnWidth(0.33),
                    3: FractionColumnWidth(0.14),
                    4: FractionColumnWidth(0.19),
                  },
                  border: TableBorder.all(color: Color(0xFF353535)),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TableCell(
                              child: Center(
                                  child: Text(
                            "Product",
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                              fontSize: 18,
                            )),
                          ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TableCell(child: Text("Price")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TableCell(child: Text("Quantity")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TableCell(child: Text("Total")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TableCell(child: Text("Remove")),
                        ),
                      ],
                    ),
                    tableRow(image: "assets/images/Cart/product1.jpg"),
                    tableRow(image: "assets/images/Cart/product2.jpg"),
                    tableRow(image: "assets/images/Cart/product3.jpg"),
                    tableRow(image: "assets/images/Cart/product4.jpg"),
                    tableRow(image: "assets/images/Cart/product5.jpg"),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}








                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: DataTable(columns: [
                //     DataColumn(label: Text("Product")),
                //     DataColumn(label: Text("Price")),
                //     DataColumn(label: Text("Quantity")),
                //     DataColumn(label: Text("Total")),
                //     DataColumn(label: Text("Remove")),
                //   ], rows: [
                //     DataRow(cells: [
                //       DataCell(
                //         Container(
                //           height: 160,
                //           width: 80,
                //           color: Colors.red,
                //           child: Row(
                //             children: [
                //               Container(
                //                 height: 0,
                //                 width: 60,
                //                 color: Colors.black,
                //               ),
                //               Expanded(child: Text("Product name"))
                //             ],
                //           ),
                //         ),
                //       ),
                //       DataCell(
                //         Container(
                //           height: 85,
                //           width: 80,
                //           color: Colors.indigo,
                //         ),
                //       ),
                //       DataCell(Container(
                //         height: 130,
                //         width: 80,
                //         color: Colors.yellow,
                //       )),
                //       DataCell(Container(
                //         height: 60,
                //         width: 80,
                //         color: Colors.blue,
                //       )),
                //       DataCell(Container(
                //         height: 90,
                //         width: 80,
                //         color: Colors.greenAccent,
                //       ))
                //     ])
                //   ]),
                // )