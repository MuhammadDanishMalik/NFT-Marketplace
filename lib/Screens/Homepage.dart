import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash/Widgets/CategoriesLines_Widget.dart';
import 'package:splash/Widgets/ListWidget.dart';
import 'package:splash/Widgets/ListWidget02.dart';
import 'package:splash/Widgets/TextField_Widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 247, 253),
      body: SafeArea(
        child: Column(children: [
          //This Container will use as custom App Bar
          SizedBox(
            height: 80,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.07,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/eth.png"),
                    ),
                  ),
                ),
                const SizedBox(
                    width: 5), // Add some spacing between the logo and text
                Text(
                  "NFT",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight
                          .bold), // You can adjust the text style as needed
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.04,
                    child: const Icon(
                      FontAwesomeIcons.user,
                      size: 25,
                      color: Colors.black87,
                    ),
                  ),
                )
              ]),
            ),
          ),
          //Importing Text Field Widget
          const Text_Field_Widget(),
          const SizedBox(
            height: 20,
          ),
          CategoriesWidget(
            image: "assets/images/flash.png",
            CategorieName: "Categories",
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 130,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    ListWidget(
                      color: Color.fromARGB(82, 255, 224, 178),
                      image: "assets/images/music.png",
                      title: "Music",
                    ),
                    ListWidget(
                      color: Color.fromARGB(117, 187, 222, 251),
                      image: "assets/images/sport.png",
                      title: "Sport",
                    ),
                    ListWidget(
                      color: Color.fromARGB(125, 200, 230, 201),
                      image: "assets/images/plane.png",
                      title: "Music",
                    ),
                    ListWidget(
                      color: Color.fromARGB(88, 255, 205, 210),
                      image: "assets/images/health.png",
                      title: "Music",
                    ),
                    ListWidget(
                      color: Color.fromARGB(148, 255, 224, 178),
                      image: "assets/images/art.png",
                      title: "Art",
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CategoriesWidget(
            image: "assets/images/flame.png",
            CategorieName: "Hot Drops",
          ),

          Container(
            height: 250,
            child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: const [
                  ListWidget2(),
                  ListWidget2(),
                  ListWidget2(),
                ]),
          ),
          Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: const Icon(
                            FontAwesomeIcons.house,
                            color: Colors.black54,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: const Icon(
                            FontAwesomeIcons.compass,
                            color: Colors.black54,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: const Icon(
                            FontAwesomeIcons.wallet,
                            color: Colors.black54,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: const Icon(
                            FontAwesomeIcons.user,
                            color: Colors.black54,
                            size: 20,
                          ),
                        )
                      ]),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
