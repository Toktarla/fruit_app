import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/app_bar.dart';
import 'package:uidesign/products.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: product.color,
      body: Column(
        children: [
      Row(
      children: [
      SizedBox(
      height: 45,
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white60,
            )),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),

            child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.white,
                ))),
      ),
      ],
    ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Container(
              child: Image.asset(product.image),
              height: height * 0.4,
              width: width * 0.8,
            ),
          ),
          Expanded(
            child: Container(
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36.0),
                  topRight: Radius.circular(36.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Text(
                        product.fruit,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: product.color,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.5',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          product.description,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28),
                    child: Text(
                      product.info,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  SizedBox(height: 28,),

                  Container(
                    margin: EdgeInsets.only(left: 28),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: '\$ ',
                          style: TextStyle(
                            fontSize: 13,
                            color: product.color,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: product.price.toString(),
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                                text: '/kg',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic)),
                          ],
                        ),
                      ),
                    ),
                  ),





                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
