import 'package:flutter/material.dart';
import 'package:lomba/helper/user_info.dart';
import 'package:lomba/page/main_page/main_page.dart';
import 'package:lomba/theme.dart';

class WelcomeName extends StatefulWidget {
  const WelcomeName({Key? key}) : super(key: key);

  @override
  _WelcomeNameState createState() => _WelcomeNameState();
}

class _WelcomeNameState extends State<WelcomeName> {
  final TextEditingController _name = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                      'Hai, Selamat Datang Mohon Isi nama kamu dibawah ini ya'),
                  TextField(
                    controller: _name,
                    cursorColor: primaryColor,
                    scrollPadding: EdgeInsets.zero,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Masukan Nama mu',
                      border: OutlineInputBorder(
                        gapPadding: 0,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 0,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        await UserInfo().setName(_name.text);
                        var name = await UserInfo().getName();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage(
                                      name: name!,
                                    )));
                      },
                      child: Text('Masuk'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
