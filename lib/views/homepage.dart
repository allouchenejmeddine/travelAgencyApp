import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:get_storage/get_storage.dart';
import '../constants.dart';
import '../widgets/build_menu.dart';
import '../widgets/destination_homepage.dart';
import 'destination.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isOpened = false;
  bool isActivated = false;
  List tags = [{"name" : "Car tour", 'icon' : Icons.car_rental, "isActive" : false}, {"name" : "Nature", 'icon' : Icons.nature_people_outlined, "isActive" : false}, {"name" : "History", 'icon' : Icons.history_edu, "isActive" : false}, {"name" : "Snow", 'icon' : Icons.snowing, "isActive" : false}];
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();
  final List destinations = [
    InkWell(
        onTap:(){
          Get.to(()=>Destination());
        },
        child: DestinationHomepage(imageUrl: "assets/images/destinations/paris.png", location: "Eiffel Tour", destination : "Paris", price: 2000)
    ),
    DestinationHomepage(imageUrl: "assets/images/destinations/bali.png", location: "Bali", destination : "Malaysia", price: 3650),
    DestinationHomepage(imageUrl: "assets/images/destinations/dubai.png", location: "Burj Khalifa", destination : "Dubai", price: 3990),
    DestinationHomepage(imageUrl: "assets/images/destinations/egypt.png", location: "Ahram", destination : "Egypt", price: 2890),
    DestinationHomepage(imageUrl: "assets/images/destinations/marrakech.png", location: "Souk", destination : "Marrakech", price: 1950),
    DestinationHomepage(imageUrl: "assets/images/destinations/istanbul.png", location: "Istanbul", destination : "Turkey", price: 1980),
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: Colors.green[400],
      type: SideMenuType.slideNRotate,
      menu: const Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: BuildMenu(),
      ),
      onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
      },
      child: SideMenu(
        background: Colors.orangeAccent,
        key: _sideMenuKey,
        menu: BuildMenu(),
        type: SideMenuType.slideNRotate,
        onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
        },
        child: IgnorePointer(
        ignoring: isOpened,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80, //this
            leadingWidth: 100, //this
            leading: IconButton(
              icon: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.menu_open, color: Colors.black87, size: 30,),
                radius: 25,
              ),
              onPressed: (){
                final _state = _sideMenuKey.currentState;
                if(_state != null){
                  if (_state.isOpened)
                    _state.closeSideMenu(); // close side menu
                  else
                    _state.openSideMenu();//
                }
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_none_rounded, color: Colors.black87, size: 30,),
                onPressed: (){
                  final _state = _sideMenuKey.currentState;
                  if(_state != null){
                    if (_state.isOpened)
                      _state.closeSideMenu(); // close side menu
                    else
                      _state.openSideMenu();//
                  }
                },
              )
            ],
            backgroundColor: Colors.blueGrey[50],
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              color: Colors.blueGrey[50],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore the",
                      style: GoogleFonts.poppins(fontSize: 30, color: Colors.black87,),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "Beautiful world!",
                      style: GoogleFonts.poppins(fontSize: 30,  color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20,),
                    ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: "Your budget here",
                          prefixIcon: Icon(Icons.search, color: Colors.black45,),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                            ),
                          fillColor: Colors.white,
                          filled: true
                        ),
                      ),
                      contentPadding: EdgeInsets.zero,
                      trailing: ElevatedButton(
                        onPressed: (){

                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.orange)
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: (){

                          },
                        )
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      "Categories",
                      style: GoogleFonts.poppins(fontSize: 20, color: Colors.black87,),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 50,
                      child: ListView.separated(
                        separatorBuilder: (context, int)=>const SizedBox(width: 10,),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: tags.length,
                          itemBuilder: (context, index){
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: tags[index]["isActive"] == true ? Colors.orange : Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                width: 150,
                                height: 50,
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      tags[index]["isActive"] = !tags[index]["isActive"];
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          color: Colors.white,
                                          child: Icon(
                                            tags[index]["icon"], color: Colors.deepOrange,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          tags[index]["name"],
                                          style: GoogleFonts.poppins(fontSize: 12, color: tags[index]["isActive"]? Colors.white : Colors.black87, fontWeight: FontWeight.w600,),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Travel places",
                          style: GoogleFonts.poppins(fontSize: 20, color: Colors.black87,),
                          textAlign: TextAlign.start,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )),
                            backgroundColor: MaterialStateProperty.all(Colors.grey[300])
                          ),
                            onPressed: (){

                            },
                            child: Text(
                              "View All",
                              style: GoogleFonts.poppins(fontSize: 12,  color: Colors.black87, fontWeight: FontWeight.w600),
                            )
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 220,
                      child: ListView.separated(
                        itemCount: destinations.length,
                        itemBuilder: (context, index){
                          return destinations[index];
                        },
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ),
      ),
    ));
  }
}
