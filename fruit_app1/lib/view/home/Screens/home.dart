import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app1/Model/home_model/category_model.dart';
import 'package:fruit_app1/view/home/widgets/product.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/resource/HorizontalCardList.dart';
import '../widgets/AppBar.dart';
import '../widgets/bottomBarr.dart';
import '../widgets/catgorydetail.dart';
import '../widgets/corusselDetail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        bottomNavigationBar:Bottombarr(),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              //////////////////////
              Corusseldetail(),
              const SizedBox(
                height: 15,
              ),
              // Replace the entire Row widget with this:
              Catgorydetail(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fruits",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      "seeAll",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff0CA201)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 210,
              child: Product(),
              ),
              const Spacer(),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //   borderRadius: BorderRadius.circular(12),
          //   //               shape: BoxShape.circle
          //     ),
          //     child: ListView.builder(
          //       itemCount: 3,
          //       scrollDirection: Axis.horizontal,
          //       itemBuilder: (context, index) {
          //       return Padding(
          //         padding: const EdgeInsets.only(left: 6),
          //         child: Container(
          //                     width: 50,
          //           height: 50,
          //           decoration: const BoxDecoration(
          //             shape: BoxShape.circle,
          //             color: Colors.white
          //
          //           ),
          //           child: Image.asset('assets/fruit/orange.png',fit: BoxFit.contain,),
          //         ),
          //       );
          //     },),
          //   ),
          // ),
              const SizedBox(height:20,),
            ],
          ),
        ));
  }
}
