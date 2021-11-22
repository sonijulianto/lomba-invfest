import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/helper/user_info.dart';
import 'package:lomba/pages/home_page.dart';

class WelcomeName extends StatefulWidget {
  const WelcomeName({Key? key}) : super(key: key);

  @override
  _WelcomeNameState createState() => _WelcomeNameState();
}

bool activate = false;
bool activates = false;

class _WelcomeNameState extends State<WelcomeName> {
  final TextEditingController _name = TextEditingController(text: '');
  bottomActive() {
    setState(() {
      activate = true;
    });
  }

  bottom() {
    setState(() {
      activates = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadeInUp(
                delay: Duration(milliseconds: 100),
                child: GestureDetector(
                  onTap: () => bottom(),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 15, right: 10),
                      width: 280,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xffB5E6C2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Hallo selamat datang '),
                      ),
                    ),
                  ),
                ),
              ),
              (activates)
                  ? FadeInUp(
                      delay: Duration(milliseconds: 100),
                      child: GestureDetector(
                        onTap: () => bottomActive(),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 15, right: 10),
                            width: 280,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xffB5E6C2),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('up volume'),
                            ),
                          ),
                        ),
                      ),
                    )
                  : SizedBox(),
              (activate)
                  ? Align(
                      alignment: Alignment.center,
                      child: FadeInUp(
                        child: Row(children: [
                          Container(
                            width: 210,
                            height: 30,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: TextFormField(
                              controller: _name,
                              scrollPadding: EdgeInsets.zero,
                              cursorColor: buttonColor,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 10),
                                hintStyle:
                                    greenTextStyle.copyWith(fontSize: 12),
                                hintText: 'Masukan Nama',
                                border: OutlineInputBorder(
                                  gapPadding: 0,
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                  borderSide: BorderSide(
                                    color: buttonColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                  borderSide: BorderSide(
                                    color: buttonColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              await UserInfo().setName(_name.text);
                              var names = await UserInfo().getName();
                              print(names);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(
                                    name: names!,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Kirim',
                              style: blackTextStyle,
                            ),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(50, 33), primary: greenColor),
                          )
                        ]),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
