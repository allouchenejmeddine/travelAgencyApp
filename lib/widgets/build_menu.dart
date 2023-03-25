import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BuildMenu extends StatelessWidget {
  const BuildMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.trending_up,
                  size: 30.0, color: Colors.white),
              title: Text(
                  "Trending destinations",
                  style: GoogleFonts.poppins(fontSize: 16,  color: Colors.white, fontWeight: FontWeight.w600),
              ),
              textColor: Colors.white,
              dense: true,

              // padding: EdgeInsets.zero,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.favorite,
                  size: 30.0, color: Colors.white),
              title: Text(
                  "For Honeymoon",
                  style: GoogleFonts.poppins(fontSize: 16,  color: Colors.white, fontWeight: FontWeight.w600),
              ),
              textColor: Colors.white,
              dense: true,

              // padding: EdgeInsets.zero,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.people_alt,
                  size: 30.0, color: Colors.white),
              title: Text(
                  "For Friends",
                style: GoogleFonts.poppins(fontSize: 16,  color: Colors.white, fontWeight: FontWeight.w600),
              ),
              textColor: Colors.white,
              dense: true,

              // padding: EdgeInsets.zero,
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                  "It's always a good choice",
                style: GoogleFonts.poppins(fontSize: 16,  color: Colors.black87, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left : 20.0),
              child: Text(
                "To Travel",
                style: GoogleFonts.poppins(fontSize: 18,  color: Colors.black87, fontWeight: FontWeight.w600),
              ),
            ),

          ],
        ),
      );
  }
}
