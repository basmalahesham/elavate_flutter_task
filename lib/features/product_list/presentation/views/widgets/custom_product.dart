import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({super.key});

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
              Image.asset(
                'assets/images/Frame 68.png',
                fit: BoxFit.fill,
                width: 210,
                height: 135,
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Nike Air Jordon\nNike shoes flexible for wo..',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF06004E),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'EGP 1,000 ',
                      style: TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
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
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'Review',
                      style: TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '(4.6)',
                      style: TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 15,
                      color: Color(0xffFFDD4F),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
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
