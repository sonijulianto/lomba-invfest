import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/functions/sounds/sound.dart';
import 'package:lomba/pages/lokasi_page.dart';
import 'package:lomba/widgets/aksi_card.dart';
import 'package:lomba/widgets/custom_dialog.dart';

class AksiPage extends StatefulWidget {
  const AksiPage({Key? key}) : super(key: key);

  @override
  _AksiPageState createState() => _AksiPageState();
}

class _AksiPageState extends State<AksiPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );
  late final AnimationController _controller1 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2200),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation1 = CurvedAnimation(
    parent: _controller1,
    curve: Curves.easeOutBack,
  );
  late final AnimationController _controller2 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2100),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation2 = CurvedAnimation(
    parent: _controller2,
    curve: Curves.easeOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 25, 178, 238),
              Color.fromARGB(255, 21, 236, 229),
              Color.fromARGB(255, 255, 236, 229),
            ],
          ),
        ),
        child: ListView(children: [
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              playSound();
              Navigator.pop(context);
            },
            child: ScaleTransition(
              scale: _animation2,
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back,
                  color: whiteColor,
                  size: 50,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              ScaleTransition(
                scale: _animation1,
                child: Text(
                  'PILIH AKSI',
                  style: blackTextStyle.copyWith(
                    fontSize: 26,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              AksiCard(
                height: 130,
                width: double.infinity,
                animation: _animation,
                image: 'assets/qna.jpg',
                title: 'Program QnA',
                description:
                    'Duta EMOSI akan menjalankan aksinya dalam sosialisasi dan tanya jawab bersama warga melalui apliksi perpesanan, dapatkah kamu menyebarkan informasi dengan tepat?',
                style: greenTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
                ontap: () {
                  playSoundAndNext(context,
                      MaterialPageRoute(builder: (context) => LokasiPage()));
                },
              ),
              SizedBox(
                height: 30,
              ),
              AksiCard(
                width: double.infinity,
                height: 130,
                animation: _animation1,
                image: 'assets/blusukan.jpg',
                title: 'Program Blusukan',
                description:
                    'Duta EMOSI akan menjalankan aksinya dalam menanggapi kasus protokol kesehatan yang terjadi di lingkungan warga. dapatkah kamu menanggapi merekadengan baik?',
                style: blueTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
                ontap: () {
                  playSound();
                  customDialogAksi(
                      context, 'Mohon maaf fitur ini belum tersedia.');
                },
              ),
            ]),
          ),
        ]),
      ),
    ));
  }
}
