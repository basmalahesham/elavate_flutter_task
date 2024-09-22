import 'package:cached_network_image/cached_network_image.dart';
import 'package:elevate_flutter_task/features/product_list/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            color: Color(0x4C004182),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl: productModel.image??'',
                width: double.infinity,
                height: 135,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                placeholder: (context, url) =>
                const Center(child: Center(child: CircularProgressIndicator())),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/images/fav.svg',
                      // Set your desired height
                    ),
                  ),
                ),
              ),
            ],
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  productModel.title??'',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF06004E),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      '${productModel.price}',
                      style: const TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '1,300 EGP',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0x99004182),
                        color: Color(0x99004182),
                        fontSize: 11,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Text(
                      'Review',
                      style: TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${productModel.rating?.rate}',
                      style: const TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      FontAwesomeIcons.solidStar,
                      size: 15,
                      color: Color(0xffFFDD4F),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.add_circle,
                      color: Color(0xFF004182),
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
