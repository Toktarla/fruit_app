import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/products.dart';

class FruitCard extends StatelessWidget {
  const FruitCard({Key? key,required this.product}) : super(key: key);



  final Product product;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Container(
          margin: EdgeInsets.only(bottom: 10),

          width: width*0.35,
          height: height*0.8,

          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Image.asset(product.image),
                height: height*0.15,
                width: width*0.25,




              ),
              Text(product.fruit,style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.black

              ),),
              Text(product.description,style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800]

              ),),
              Text('\$${product.price} /kg',style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Colors.black

              ),)










            ],
          ),


        ),
      ),
    );
  }
}
