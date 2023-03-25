import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class DestinationHomepage extends StatelessWidget {
  const DestinationHomepage( {Key? key, required this.imageUrl, required this.location, required this.destination, required this.price}) : super(key: key);
  final String imageUrl;
  final String location;
  final String destination;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(imageUrl, height: 150, width: width-60, fit: BoxFit.cover,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      location,
                      style: GoogleFonts.poppins(fontSize: 16,  color: Colors.blueGrey, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text(
                          destination,
                          style: GoogleFonts.poppins(fontSize: 16,  color: Colors.black87, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20,),
                Text(
                  "Starts From ${price.toString()} Eur",
                  style: GoogleFonts.poppins(fontSize: 16,  color: Colors.black87, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
