import 'package:flutter/material.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-satu.dart';
import 'package:lomba/widgets/chat_card.dart';

class PasarJawabanCardSatu extends StatelessWidget {
  const PasarJawabanCardSatu({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: ChatCard(
            people: 'Kak Pangaribawa - Penjual Ikan Segar',
            jawaban: true,
            message: jawabanSatu(1),
            alignment: Alignment.bottomRight,
          ),
        ),
        ChatCard(
          people: 'Kak Pangaribawa - Penjual Ikan Segar',
          jawaban: true,
          message: jawabanSatu(2),
          alignment: Alignment.bottomRight,
        ),
        ChatCard(
          people: 'Kak Pangaribawa - Penjual Ikan Segar',
          jawaban: true,
          message: jawabanSatu(3),
          alignment: Alignment.bottomRight,
        ),
        ChatCard(
          people: 'Kak Pangaribawa - Penjual Ikan Segar',
          jawaban: true,
          message: jawabanSatu(4),
          alignment: Alignment.bottomRight,
        ),
        ChatCard(
          people: 'Kak Pangaribawa - Penjual Ikan Segar',
          jawaban: true,
          message: jawabanSatu(5),
          alignment: Alignment.bottomRight,
        ),
      ],
    );
  }
}
