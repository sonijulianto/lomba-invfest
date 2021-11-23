import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';

class AksiCard extends StatelessWidget {
  final Function() ontap;
  final Animation<double> animation;
  final String image;
  final String title;
  final String description;
  final TextStyle style;
  final double width;
  final double height;
  final String? harga;
  AksiCard({
    Key? key,
    this.harga,
    required this.ontap,
    required this.animation,
    required this.image,
    required this.title,
    required this.description,
    required this.style,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: ScaleTransition(
        scale: animation,
        child: Container(
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            border: Border.all(color: whiteColor),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: style,
                    ),
                    Text(
                      description,
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    harga == null
                        ? SizedBox()
                        : Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              harga!,
                              style: blackTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
