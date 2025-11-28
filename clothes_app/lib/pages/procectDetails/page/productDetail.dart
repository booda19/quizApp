// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
//
// import '../../category/widgets/Category_Filter.dart';
// import '../../home/widgets/appBAr.dart';
//
// class Productdetail extends StatefulWidget {
//   const Productdetail({
//     super.key,
//     this.image,
//     this.Desc,
//     this.price,
//   });
//
// // final CategoryModel? item;
//   final String? Desc, image, price;
//
//   @override
//   State<Productdetail> createState() => _ProductdetailState();
// }
// ScrollController scrollController = ScrollController();
// class _ProductdetailState extends State<Productdetail> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _showSimpleBottomSheet(context);
//     });
//   }
//   void _showSimpleBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       backgroundColor: Colors.transparent,
//       builder: (context) => DraggableScrollableSheet(
//         initialChildSize: 0.3,
//         minChildSize: 0.3,
//         maxChildSize: 0.8,
//         expand: false,
//         builder: (context, scrollController) {
//           return Container(
//             decoration: const BoxDecoration(
//               color: Colors.transparent,
//               borderRadius:  BorderRadius.vertical(top: Radius.circular(16)),
//             ),
//             child: ListView(
//               controller: scrollController,
//               padding: const EdgeInsets.all(16),
//               children: [
//                 // Drag handle
//                 Center(
//                   child: Container(
//                     height: 6,
//                     width: 42,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 13),
//
//                 // Product description
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     widget.Desc.toString(),
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w700,
//                       height: 1.2,
//                     ),
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//
//                 // Price and favorite row
//                 Row(
//                   children: [
//                     Text(
//                       widget.price.toString(),
//                       style: const TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                         height: 1.2,
//                       ),
//                     ),
//                     const Spacer(),
//                     const Icon(Icons.favorite_border),
//                     const SizedBox(width: 5),
//                     const Text(
//                       '450',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                         height: 1.2,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//
//                 // Select Color Container
//                 Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey.shade300),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Select Color",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.grey.shade700,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Row(
//                         children: [
//                           _buildColorOption(Colors.blue, "Blue"),
//                           const SizedBox(width: 10),
//                           _buildColorOption(Colors.red, "Red"),
//                           const SizedBox(width: 10),
//                           _buildColorOption(Colors.green, "Green"),
//                           const SizedBox(width: 10),
//                           _buildColorOption(Colors.black, "Black"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//
//                 // Select Size Container
//                 Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey.shade300),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Select Size",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.grey.shade700,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Row(
//                         children: [
//                           _buildSizeOption("S"),
//                           const SizedBox(width: 10),
//                           _buildSizeOption("M"),
//                           const SizedBox(width: 10),
//                           _buildSizeOption("L"),
//                           const SizedBox(width: 10),
//                           _buildSizeOption("XL"),
//                           const SizedBox(width: 10),
//                           _buildSizeOption("XXL"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//
//                 // Free Delivery and Free Return
//                 Row(
//                   children: [
//                     _buildFeatureItem(Icons.local_shipping, "Free Delivery"),
//                     const SizedBox(width: 20),
//                     _buildFeatureItem(Icons.replay, "Free Return"),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//
//                 // About Product
//                 Text(
//                   "About Product",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey.shade800,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 Text(
//                   "This is a premium quality product made from the finest materials. Designed for comfort and style, perfect for everyday wear.",
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey.shade600,
//                     height: 1.4,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//
//                 // Product Details
//                 Text(
//                   "Product Details",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey.shade800,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 _buildDetailItem("Brand", "Nike"),
//                 _buildDetailItem("Material", "100% Cotton"),
//                 _buildDetailItem("Care", "Machine Wash"),
//                 _buildDetailItem("Fit", "Regular Fit"),
//                 const SizedBox(height: 20),
//
//                 // Size & Fit
//                 Text(
//                   "Size & Fit",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey.shade800,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 Text(
//                   "• True to size\n• Regular fit\n• Model height: 6'0\"\n• Model wearing: Size M",
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey.shade600,
//                     height: 1.4,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//
//                 // History
//                 Text(
//                   "History",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey.shade800,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 Text(
//                   "This product was added to our collection in 2024. It has been one of our best-selling items since launch.",
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey.shade600,
//                     height: 1.4,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
//
// // Helper widget for color options
//   Widget _buildColorOption(Color color, String label) {
//     return Column(
//       children: [
//         Container(
//           width: 40,
//           height: 40,
//           decoration: BoxDecoration(
//             color: color,
//             shape: BoxShape.circle,
//             border: Border.all(color: Colors.grey.shade300),
//           ),
//         ),
//         const SizedBox(height: 4),
//         Text(
//           label,
//           style: const TextStyle(fontSize: 12),
//         ),
//       ],
//     );
//   }
//
// // Helper widget for size options
//   Widget _buildSizeOption(String size) {
//     return Container(
//       width: 40,
//       height: 40,
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade300),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Center(
//         child: Text(
//           size,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//     );
//   }
//
// // Helper widget for feature items
//   Widget _buildFeatureItem(IconData icon, String text) {
//     return Row(
//       children: [
//         Icon(icon, color: Colors.green, size: 20),
//         const SizedBox(width: 5),
//         Text(
//           text,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: Colors.green,
//           ),
//         ),
//       ],
//     );
//   }
//
// // Helper widget for detail items
//   Widget _buildDetailItem(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "$title: ",
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w600,
//               color: Colors.grey.shade700,
//             ),
//           ),
//           Expanded(
//             child: Text(
//               value,
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.grey.shade600,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: Appbarr(
//         titleText: 'Men',
//         leadingIcon: Icons.arrow_back_outlined,
//         onLeadingPressed: () {
//           Navigator.pop(context);
//         },
//         trailingIcon: Icons.shopping_bag,
//       ),
//       body: Column(
//         children: [
//           const CategoryFilter(),
//           const Gap(16),
//           Container(
//             width: double.infinity,
//             height: 430,
//             decoration: BoxDecoration(
//               color: Colors.white54,
//               borderRadius: BorderRadius.circular(7),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Center(
//                 child: Image.asset(
//                   widget.image.toString(),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({
    super.key,
    this.image,
    this.desc,
    this.price,
    this.title,
  });

  final String? desc, image, price, title;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String _selectedColor = 'Blue';
  String _selectedSize = 'M';
  bool _isFavorite = false;
  int _favoriteCount = 450;

  final List<String> _colors = ['Blue', 'Red', 'Green', 'Black'];
  final List<String> _sizes = ['S', 'M', 'L', 'XL', 'XXL'];
  final Map<String, Color> _colorMap = {
    'Blue': Colors.blue,
    'Red': Colors.red,
    'Green': Colors.green,
    'Black': Colors.black,
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showProductDetailsSheet(context);
    });
  }

  void _showProductDetailsSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      // Drag handle
                      Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 16),
                        height: 4,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),

                      // Header with title and price
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.desc ?? 'Product Name',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                height: 1.3,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Gap(12),

                            // Price and favorite row
                            Row(
                              children: [
                                Text(
                                  widget.price ?? '0.00',
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: _toggleFavorite,
                                  child: Row(
                                    children: [
                                      Icon(
                                        _isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: _isFavorite
                                            ? Colors.red
                                            : Colors.grey.shade600,
                                        size: 24,
                                      ),
                                      const Gap(6),
                                      Text(
                                        '$_favoriteCount',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(20),
                    ],
                  ),
                ),

                // Color Selection
                SliverToBoxAdapter(
                  child: _buildSelectionContainer(
                    title: "Select Color",
                    child: Row(
                      children: _colors.map((color) =>
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: _buildColorOption(color),
                          )
                      ).toList(),
                    ),
                  ),
                ),

                // Size Selection
                SliverToBoxAdapter(
                  child: _buildSelectionContainer(
                    title: "Select Size",
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: _sizes.map((size) =>
                          _buildSizeOption(size)
                      ).toList(),
                    ),
                  ),
                ),

                // Features
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildFeatureItem(
                            Icons.local_shipping_outlined,
                            "Free Delivery",
                            "1-2 days"
                        ),
                        _buildFeatureItem(
                            Icons.replay_outlined,
                            "Free Return",
                            "30 days"
                        ),
                        _buildFeatureItem(
                            Icons.verified_outlined,
                            "Authentic",
                            "Guaranteed"
                        ),
                      ],
                    ),
                  ),
                ),

                // Product Information
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInfoSection(
                            "About Product",
                            "This is a premium quality product made from the finest materials. Designed for comfort and style, perfect for everyday wear. Features advanced moisture-wicking technology and enhanced durability.",
                          ),
                          const Gap(24),

                          _buildInfoSection(
                            "Product Details",
                            "",
                            children: [
                              _buildDetailRow("Brand", "Nike"),
                              _buildDetailRow("Material", "100% Cotton"),
                              _buildDetailRow("Care", "Machine Wash Cold"),
                              _buildDetailRow("Fit", "Regular Fit"),
                              _buildDetailRow("Origin", "Vietnam"),
                            ],
                          ),
                          const Gap(24),

                          _buildInfoSection(
                            "Size & Fit",
                            "• True to size\n• Regular fit\n• Model height: 6'0\"\n• Model wearing: Size M\n• Comfortable elastic waistband",
                          ),
                          const Gap(24),

                          _buildInfoSection(
                            "History",
                            "This product was added to our collection in 2024. It has been one of our best-selling items since launch, loved by thousands of customers worldwide.",
                          ),
                          const Gap(40),

                          // Add to Cart Button
                          Container(
                            width: double.infinity,
                            height: 56,
                            margin: const EdgeInsets.only(bottom: 20),
                            child: ElevatedButton(
                              onPressed: _addToCart,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 2,
                              ),
                              child: const Text(
                                'Add to Cart',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSelectionContainer({required String title, required Widget child}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(12),
          child,
        ],
      ),
    );
  }

  Widget _buildColorOption(String colorName) {
    bool isSelected = _selectedColor == colorName;
    return GestureDetector(
      onTap: () => setState(() => _selectedColor = colorName),
      child: Column(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: _colorMap[colorName],
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.black : Colors.grey.shade300,
                width: isSelected ? 2 : 1,
              ),
            ),
            child: isSelected ? const Icon(
              Icons.check,
              color: Colors.white,
              size: 20,
            ) : null,
          ),
          const Gap(6),
          Text(
            colorName,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              color: isSelected ? Colors.black : Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSizeOption(String size) {
    bool isSelected = _selectedSize == size;
    return GestureDetector(
      onTap: () => setState(() => _selectedSize = size),
      child: Container(
        width: 50,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.transparent,
          border: Border.all(
            color: isSelected ? Colors.black : Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title, String subtitle) {
    return Column(
      children: [
        Icon(icon, color: Colors.green, size: 24),
        const Gap(4),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSection(String title, String content, {List<Widget>? children}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 1.3,
          ),
        ),
        const Gap(8),
        if (content.isNotEmpty)
          Text(
            content,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
              height: 1.5,
            ),
          ),
        if (children != null) ...children,
      ],
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              "$title:",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
      _favoriteCount += _isFavorite ? 1 : -1;
    });

    // Show a quick feedback
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _isFavorite ? 'Added to favorites' : 'Removed from favorites',
        ),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  void _addToCart() {
    // Close the bottom sheet first
    Navigator.pop(context);

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Product added to cart!'),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        action: SnackBarAction(
          label: 'View Cart',
          textColor: Colors.white,
          onPressed: () {
            // Navigate to cart page
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(widget.title ?? 'Product Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Product Image
                  Container(
                    width: double.infinity,
                    height: 400,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: widget.image != null
                          ? Image.asset(
                        widget.image!,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error_outline, size: 50);
                        },
                      )
                          : const Icon(Icons.image_not_supported, size: 50),
                    ),
                  ),

                  // Quick Info
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.desc ?? 'Product Name',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(8),
                        Text(
                          widget.price ?? '0.00',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepOrange,
                          ),
                        ),
                        const Gap(16),
                        Text(
                          'Swipe up for more details, customization options, and to add to cart.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}