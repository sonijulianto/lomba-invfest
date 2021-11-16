import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';

class LokasiCard extends StatelessWidget {
  final Function() ontap;
  final Animation<double> animation;
  final String image;
  final String description;
  LokasiCard({
    Key? key,
    required this.ontap,
    required this.animation,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: ScaleTransition(
        scale: animation,
        child: Container(
          width: 250,
          height: 200,
          margin: EdgeInsets.only(
            right: 25,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            border: Border.all(color: whiteColor),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
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
                      'Lokasi',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      description,
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: bold,
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
