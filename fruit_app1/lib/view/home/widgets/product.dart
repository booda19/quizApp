// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../../../Model/home_model/fruits_model.dart';
//
// class Product extends StatelessWidget {
//   const Product({super.key, required this.onPressed});
//   final VoidCallback onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: fruit_model.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.symmetric(horizontal: 11),
//             child: Container(
//               width: 180,
//               decoration: BoxDecoration(
//                 // color: Colors.grey,
//
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(color: Colors.white),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   Stack(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.2),
//                               blurRadius: 5,
//                               offset: Offset(0, 2),
//                             ),
//                           ],
//                         ),
//                         // color: Colors.green,
//                         height: 140,
//                         width: double.infinity,
//                         child: Padding(
//                           padding: const EdgeInsets.all(20.0),
//                           child: Image.asset(
//
//                             fruit_model[index].image,
//                             fit: BoxFit.contain,
//                             errorBuilder:
//                                 (context, error, stackTrace) {
//                               return Icon(
//                                 Icons.shopping_basket,
//                                 size: 50,
//                                 color: Colors.grey,
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 10,
//                         child: Container(
//                           width: 36,
//                           height: 36,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             boxShadow: [
//                               BoxShadow(
//                                 color:
//                                 Colors.grey.withOpacity(0.3),
//                                 blurRadius: 8,
//                                 offset: Offset(0, 2),
//                                 spreadRadius: 1,
//                               ),
//                             ],
//                             gradient: LinearGradient(
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                               colors: [
//                                 Colors.white,
//                                 Colors.grey[100]!
//                               ],
//                             ),
//                           ),
//                           child: IconButton
//                             (
//                             padding: EdgeInsets.zero,
//                             icon: Icon(
//
//                               Icons.add,
//                               size: 20,
//                               color: Colors.green[700],
//                             ),
//                             onPressed: onPressed,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Column(
//                     // mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         fruit_model[index].typeFruit,
//                         style: GoogleFonts.inter(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 16),
//                       ),
//                       SizedBox(
//                         height: 2,
//                       ),
//                       Row(
//                         children: [
//                           Row(
//                             mainAxisAlignment:
//                             MainAxisAlignment.spaceBetween,
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.amber,
//                                 size: 16,
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 fruit_model[index].rate,
//                                 style: GoogleFonts.inter(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 15),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 2,
//                       ),
//                       Text(
//                         fruit_model[index].price,
//                         style: GoogleFonts.inter(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 16,
//                           color: Color(0xff0CA201),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Model/home_model/fruits_model.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: fruit_model.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Container(
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      height: 140,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          fruit_model[index].image,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.shopping_basket,
                              size: 50,
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                    ),

                    // Quantity Selector (appears when quantity > 0)
                    if (fruit_model[index].quantity > 0)
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.green.withOpacity(0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Minus Button
                              IconButton(
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.remove,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (fruit_model[index].quantity > 0) {
                                      fruit_model[index].quantity--;
                                    }
                                  });
                                },
                              ),

                              // Quantity Text
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  fruit_model[index].quantity.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),

                              // Plus Button
                              IconButton(
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.add,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    fruit_model[index].quantity++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    else
                    // Add Button (shown when quantity is 0)
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.green[700],
                            ),
                            onPressed: () {
                              setState(() {
                                fruit_model[index].quantity = 1;
                              });
                            },
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fruit_model[index].typeFruit,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Rating
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber, size: 16),
                              const SizedBox(width: 4),
                              Text(
                                fruit_model[index].rate,
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),

                          // Price
                          Text(
                            fruit_model[index].price,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: const Color(0xff0CA201),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}