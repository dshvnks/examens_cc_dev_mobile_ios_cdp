import 'package:flutter/material.dart';
import 'package:boutoratakpa_cc_project/data.dart';

Widget BuildDealers(Dealer dealer, int index) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
    width: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(dealer.image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          height: 60,
          width: 60,
        ),
        Container(
          height: 16,
        ),
        Text(
          dealer.name,
          style:
              TextStyle(fontSize: 18, fontWeight: FontWeight.bold, height: 1),
        ),
        Text(
          dealer.offers.toString() + "offers",
          style:
              TextStyle(fontSize: 13,color: Colors.grey),
        ),
      ],
    ),
  );
}
