import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';

class TokoCard extends StatelessWidget {
  final IconData icon;
  final String harga;
  final String nama;
  const TokoCard({
    Key? key,
    required this.icon,
    required this.harga,
    required this.nama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            width: 270,
            height: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: cardQnaColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 70,
                  color: blueColor.withOpacity(0.7),
                ),
                Text(
                  nama,
                  style: blueTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Asisten magang ini akan membantu para Duta Covidiolog untuk memberikan 1 jawaban atas pertanyaan para peserta QnA.',
                  style: tokoTextStyle.copyWith(
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 270,
            height: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: cardQnaColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: blueColor,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'BELI ',
                  style: blueTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                Text(
                  harga,
                  style: tokoTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
