import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.shopping_bag_outlined,
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
    );
  }
}
