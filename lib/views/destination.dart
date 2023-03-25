import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable/expandable.dart';
import '../constants.dart';
import 'homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Destination extends StatefulWidget {
  const Destination({Key? key}) : super(key: key);

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            color: Colors.blueGrey[50],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: height/2,
                    child: Container(
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/destinations/paris.png"),
                          fit: BoxFit.cover
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 20.0,
                          ),
                        ],
                      ),
                      child : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    color: Colors.grey[100]?.withOpacity(0.5),
                                    child: IconButton(
                                      icon: const Icon(Icons.arrow_back_ios_new, size: 30, color : Colors.white),
                                      onPressed: (){
                                        Get.to(()=> Homepage());
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    color: Colors.grey[100]?.withOpacity(0.5),
                                    child: IconButton(
                                      icon: const Icon(Icons.favorite_border, size: 30, color : Colors.white),
                                      onPressed: (){

                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.deepOrange.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text(
                                "Paris",
                                style: GoogleFonts.poppins(fontSize: 30,  color: Colors.white, fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Icon(Icons.airplane_ticket, color: Colors.deepOrange, size: 40,),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Text(
                                        '1500 KM',
                                        style: GoogleFonts.poppins(fontSize: 16,  color: Colors.black87, fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Distance',
                                        style: GoogleFonts.poppins(fontSize: 16,  color: Colors.grey, ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Icon(Icons.star, color: Colors.deepOrange, size: 40,),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '4.6',
                                        style: GoogleFonts.poppins(fontSize: 16,  color: Colors.black87, fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Ratings',
                                        style: GoogleFonts.poppins(fontSize: 16,  color: Colors.grey, ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black45,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black45,
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    ),
                                  ]
                              ),
                              child: TextButton(
                                style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all(Size(200, 50))
                                ),
                                onPressed: (){

                                },
                                child: Text(
                                    "Book Now",
                                    style : GoogleFonts.poppins(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "Description",
                            style: GoogleFonts.poppins(fontSize: 20, color: Colors.black87,),
                            textAlign: TextAlign.start,
                          ),
                          ExpandableNotifier(
                            child: Column(
                              children: [
                                Expandable(
                                  collapsed: Text(
                                    "Paris, the City of Light, is a breathtaking destination that leaves visitors in awe...",
                                    style: GoogleFonts.poppins(fontSize: 12, color: Colors.black45,),
                                    softWrap: true,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  expanded: Text(
                                    "Paris, the City of Light, is a breathtaking destination that leaves visitors in awe. The city is known for its stunning architecture, romantic atmosphere, and rich cultural heritage. Strolling along the Seine River, one can take in the beauty of the city's iconic landmarks, such as the Eiffel Tower and Notre-Dame Cathedral.",
                                    style: GoogleFonts.poppins(fontSize: 12, color: Colors.black45,),
                                    softWrap: true,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        var controller = ExpandableController.of(context)!;
                                        return TextButton(
                                          onPressed: () => controller.toggle(),
                                          child: Text(
                                            controller.expanded ? "Show less" : "Read more",
                                            style: GoogleFonts.poppins(fontSize: 12, color: Colors.black87,),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "Program",
                            style: GoogleFonts.poppins(fontSize: 20, color: Colors.black87,),
                            textAlign: TextAlign.start,
                          ),
                          ExpandableNotifier(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expandable(
                                  collapsed: Text(
                                    "Everydays program, and excursions..",
                                    style: GoogleFonts.poppins(fontSize: 12, color: Colors.black45,),
                                    softWrap: true,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  expanded: Text(
                                    "Day 1:\nHotel: Novotel Paris Les Halles\nArrival at Charles de Gaulle Airport\nCheck-in at the hotel\nRest and relax in the afternoon\nEvening excursion: Eiffel Tower",
                                    style: GoogleFonts.poppins(fontSize: 12, color: Colors.black45,),
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        var controller = ExpandableController.of(context)!;
                                        return TextButton(
                                          onPressed: () => controller.toggle(),
                                          child: Text(
                                            controller.expanded ? "Hide program" : "Show program",
                                            style: GoogleFonts.poppins(fontSize: 12, color: Colors.black87,),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
