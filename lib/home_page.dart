import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/FruitCard.dart';
import 'package:uidesign/details_page.dart';
import 'package:uidesign/products.dart';
import 'app_bar.dart';
import 'constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // final String title;
  // final int count;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _customicon = false;





  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Column(
          children: [
            MyAppBar(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 130.0,
              ),
              child: Text(
                'Discover our \nfreshest fruits',
                style: GoogleFonts.martelSans(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: height * 0.07,
              width: width * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.search),
                  ),
                  Text(
                    'Search',
                    style: GoogleFonts.martelSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Text(
                    'Popular',
                    style: GoogleFonts.martelSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Text(
                    'See all',
                    style: GoogleFonts.martelSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[500]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 1,





                  ),itemCount: products.length, itemBuilder: (context,index)=>RawMaterialButton(
                  onPressed: (){
                    Get.to(DetailsPage(product: products[index],),duration: Duration(seconds: 1),transition: Transition.fade);
                  },
                child: FruitCard(product: products[index],),

              ),


              ),
            ),






          ],
        ),
      ),
    );
  }
}
