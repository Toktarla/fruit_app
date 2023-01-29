import 'package:flutter/material.dart';
class Product{
   String fruit='Unknown',description='Something',info='Some',image='assets/aruzhan/orange.png';

   double price=0.0;
   Color color = Colors.black;

  Product({
    required this.fruit,
    required this.description,
    required this.info,
    required this.color,
    required this.price,
    required this.image
});
}



List<Product> products=[
  Product(
    fruit: "Fresh Orange",
    description: "Best Quality",
    info: "An orange is a fruit of various citrus species in the family Rutaceae (see list of plants known as orange); it primarily refers to Citrus × sinensis,[1] which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange.",
    price: 4.80,
    color: Colors.orangeAccent,
    image: "assets/aruzhan/orange.png"

  ),
  Product(
      fruit: "Strawberry",
      description: "High Quality",
      info: "Strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness.",
      price: 9.20,
      color: Colors.pink,
      image: "assets/aruzhan/strawberry-transformed.png"


  ),
  Product(
      fruit: "Banana",
      description: "Fresh AF",
      info: "Bananas are one of the healthiest fruits in the world because they are packed full of vitamins and minerals – especially potassium, vitamin B6 and vitamin C.The fruit is variable in size, color, and firmness, but is usually elongated and curved, with soft flesh rich in starch covered with a rind",
      price: 8.35,
      color: Colors.yellowAccent,
      image: "assets/aruzhan/banana.png"


  ),
  Product(
      fruit: "Green Lime",
      description: "Tasty and Sweet",
      info: "Limes are high in vitamin C and antioxidants — both of which may offer health benefits. Eating limes or drinking the juice may improve immunity, reduce heart disease risk factors, prevent kidney stones, aid iron absorption, and promote healthy skin. Avoid limes if you're allergic to citrus fruit.",
      price: 7.77,
      color: Colors.greenAccent,
      image: "assets/aruzhan/lime.png"


  ),

];