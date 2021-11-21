import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/widgets/aksi_card.dart';
import 'package:lomba/widgets/toko_card.dart';

class TokoPage extends StatefulWidget {
  TokoPage({Key? key}) : super(key: key);

  @override
  _TokoPageState createState() => _TokoPageState();
}

class _TokoPageState extends State<TokoPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Text('Merchandise')),
                Tab(icon: Text('Asisten QnA')),
              ],
            ),
            title: Text(
              'TOKO',
              style: whiteTextStyle,
            ),
            centerTitle: true,
          ),
          body: Container(
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
            child: TabBarView(children: [
              Stack(
                children: [
                  SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          AksiCard(
                            ontap: () {},
                            animation: _animation,
                            image: 'assets/gambar2.jpg',
                            title: 'Kaos E-Covid',
                            description:
                                'kaos e-covid adalah 1 dari beberapa merchandise aplikasi e-covid',
                            style: blackTextStyle,
                            width: 250,
                            height: 100,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AksiCard(
                            ontap: () {},
                            animation: _animation,
                            image: 'assets/gambar2.jpg',
                            title: 'Kaos E-Covid',
                            description:
                                'kaos e-covid adalah 1 dari beberapa merchandise aplikasi e-covid',
                            style: blackTextStyle,
                            width: 250,
                            height: 100,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AksiCard(
                            ontap: () {},
                            animation: _animation,
                            image: 'assets/gambar2.jpg',
                            title: 'Kaos E-Covid',
                            description:
                                'kaos e-covid adalah 1 dari beberapa merchandise aplikasi e-covid',
                            style: blackTextStyle,
                            width: 250,
                            height: 100,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AksiCard(
                            ontap: () {},
                            animation: _animation,
                            image: 'assets/gambar2.jpg',
                            title: 'Kaos E-Covid',
                            description:
                                'kaos e-covid adalah 1 dari beberapa merchandise aplikasi e-covid',
                            style: blackTextStyle,
                            width: 250,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 75,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/user-circle.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pendapatan',
                                style: blackTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '90.000 Coins',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        TokoCard(
                          icon: Icons.engineering,
                          nama: 'Si Magang',
                          harga: '30,000',
                        ),
                        TokoCard(
                          icon: Icons.support_agent,
                          nama: 'Si Ambis',
                          harga: '80,000',
                        ),
                        TokoCard(
                          icon: Icons.directions_run,
                          nama: 'Si Kilat',
                          harga: '150,000',
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 75,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/user-circle.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pendapatan',
                                style: blackTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '90.000 Coins',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
