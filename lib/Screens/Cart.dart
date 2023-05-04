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
  TextEditingController couponCodeController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    couponCodeController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 38,
                    width: 370,
                    child: Image.asset("assets/images/logo/logo.png")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                      height: 500,
                      width: MediaQuery.of(context).size.width + 120,
                      // color: Colors.amber,
                      child: Table(
                        columnWidths: {
                          // 0: FractionColumnWidth(160),
                          // 1: FractionColumnWidth(36),
                          // 2: FractionColumnWidth(180),
                          // 3: FractionColumnWidth(60),
                          // 4: FractionColumnWidth(50),
                          0: FractionColumnWidth(0.29),
                          1: FractionColumnWidth(0.13),
                          2: FractionColumnWidth(0.30),
                          3: FractionColumnWidth(0.14),
                          4: FractionColumnWidth(0.19),
                        },
                        border: TableBorder.all(color: Color(0xFF353535)),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
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
                                    fontSize: 18,
                                  ),
                                ))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TableCell(
                                    child: Text(
                                  "Price",
                                  style: GoogleFonts.openSans(
                                    fontSize: 18,
                                  ),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TableCell(
                                    child: Text(
                                  "Quantity",
                                  style: GoogleFonts.openSans(
                                    fontSize: 18,
                                  ),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TableCell(
                                    child: Text(
                                  "Total",
                                  style: GoogleFonts.openSans(
                                    fontSize: 18,
                                  ),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TableCell(
                                    child: Text(
                                  "Remove",
                                  style: GoogleFonts.openSans(
                                    fontSize: 18,
                                  ),
                                )),
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
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        cursorColor: Color(0xffFF6F61),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffFF6F61)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffFF6F61)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffFF6F61)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Coupon Code',
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF6F61),
                        fixedSize: Size(120, 40)),
                    onPressed: () {},
                    child: Text('Apply'),
                  ),
                ],
              ),
              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Cart Summary",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sub Total"),
                        Text("₹99"),
                        SizedBox(
                          width: 2,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping Cost"),
                        Text("₹1"),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Grand Total"),
                        Text("₹100"),
                        SizedBox(
                          width: 8,
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFF6F61),
                            fixedSize: Size(screenSize.width / 2 - 20, 40)),
                        onPressed: () {},
                        child: Text("Update Cart")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFF6F61),
                            fixedSize: Size(screenSize.width / 2 - 20, 40)),
                        onPressed: () {},
                        child: Text("Checkout"))
                  ],
                ),
              ),
              Container(
                height: screenSize.height - 50,
                width: screenSize.width,
                decoration: BoxDecoration(),
                margin: EdgeInsets.all(15),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Get in Touch",
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      title: Text(
                        "123 E Store, Los Angeles, USA",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                      title: Text(
                        "email@example.com",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text(
                        "+123-456-7890",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    Text(
                      "Follow Us",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: screenSize.width,
                      height: 50,
                      // decoration: BoxDecoration(color: Colors.amber),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: screenSize.width * 0.15,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5)),
                            // color: Colors.black,
                            child: Center(
                              child: Image.asset(
                                  "assets/images/Social media/twitter.png",
                                  scale: 15),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5)),
                            width: screenSize.width * 0.15,
                            // color: Colors.blue,
                            child: Center(
                              child: Image.asset(
                                  "assets/images/Social media/facebook.png",
                                  scale: 15),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5)),
                            width: screenSize.width * 0.15,
                            // color: Colors.green,
                            child: Center(
                              child: Image.asset(
                                  "assets/images/Social media/linkedin.png",
                                  scale: 15),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5)),
                            width: screenSize.width * 0.15,
                            // color: Colors.red,
                            child: Center(
                              child: Image.asset(
                                  "assets/images/Social media/instagram.png",
                                  scale: 15),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5)),
                            width: screenSize.width * 0.15,
                            // color: Colors.yellow,
                            child: Center(
                              child: Image.asset(
                                  "assets/images/Social media/youtube.png",
                                  scale: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Company Info",
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.double_arrow,
                        color: Colors.black,
                      ),
                      title: Text(
                        "About us",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.double_arrow,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Privacy Policy",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.double_arrow,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Terms & Condition",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Purchase Info",
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.double_arrow,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Payment Policy",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.double_arrow,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Shipping Policy",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.double_arrow,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Return Policy",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Divider(),
                    ),
                    SizedBox(
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: Text(
                            "We Accept:",
                            style: GoogleFonts.openSans(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )),
                          SizedBox(
                            width: screenSize.width * 0.15,

                            // color: Colors.black,
                            child: Card(
                              elevation: 3,
                              child: Center(
                                child: Image.asset(
                                    "assets/images/card/visa.png",
                                    scale: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            width: screenSize.width * 0.15,
                            // color: Colors.blue,
                            child: Card(
                              elevation: 3,
                              child: Center(
                                child: Image.asset(
                                  "assets/images/card/mastercard.png",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.15,
                            // color: Colors.green,
                            child: Card(
                              elevation: 3,
                              child: Center(
                                child: Image.asset(
                                    "assets/images/card/paypal.png",
                                    scale: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.15,
                            // color: Colors.red,
                            child: Card(
                              elevation: 3,
                              child: Center(
                                child: Image.asset(
                                    "assets/images/card/american-express.png",
                                    scale: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.15,
                            // color: Colors.yellow,
                            child: Card(
                              elevation: 3,
                              child: Center(
                                child: Image.asset(
                                    "assets/images/card/visa electron.png",
                                    scale: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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



              //Secured by : 
              //   Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: [
                        //       Expanded(child: Text("Secured By:")),
                        //       Container(
                        //         width: screenSize.width * 0.15,
                        //         decoration: BoxDecoration(
                        //             border: Border.all(color: Colors.black),
                        //             borderRadius: BorderRadius.circular(5)),
                        //         // color: Colors.black,
                        //         child: Center(
                        //           child: Image.asset(
                        //               "assets/images/card/visa.png",
                        //               scale: 15),
                        //         ),
                        //       ),
                        //       Container(
                        //         decoration: BoxDecoration(
                        //             border: Border.all(color: Colors.black),
                        //             borderRadius: BorderRadius.circular(5)),
                        //         height: 35,
                        //         width: screenSize.width * 0.15,
                        //         // color: Colors.blue,
                        //         child: Center(
                        //           child: Image.asset(
                        //             "assets/images/card/mastercard.png",
                        //           ),
                        //         ),
                        //       ),
                        //       Container(
                        //         decoration: BoxDecoration(
                        //             border: Border.all(color: Colors.black),
                        //             borderRadius: BorderRadius.circular(5)),
                        //         height: 35,
                        //         width: screenSize.width * 0.15,
                        //         // color: Colors.blue,
                        //         child: Center(
                        //           child: Image.asset(
                        //             "assets/images/card/mastercard.png",
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   )