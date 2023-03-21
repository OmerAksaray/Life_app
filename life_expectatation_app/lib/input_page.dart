import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectatation_app/calculated.dart';
import 'package:life_expectatation_app/user_data.dart';

import 'icon_gender.dart';
import 'myContainer.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 0;
  double spor = 0;
  double uzunluk = 160;
  double weight = 75;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(
          'Life Expectancy',
          style: TextStyle(color: Colors.black54),
        )),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                square(
                  veled: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "Weight",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          weight.toInt().toString(),
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                print("Artti");
                                weight = weight + 1;
                              });
                            },
                            child: Icon(FontAwesomeIcons.plus),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                print("Azaldi");
                                weight = weight - 1;
                              });
                            },
                            child: Icon(FontAwesomeIcons.minus),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                square(
                  veled: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "Length",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          uzunluk.toInt().toString(),
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                print("Artti");
                                uzunluk = uzunluk + 1;
                              });
                            },
                            child: Icon(FontAwesomeIcons.plus),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                print("Azaldi");
                                uzunluk = uzunluk - 1;
                              });
                            },
                            child: Icon(FontAwesomeIcons.minus),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          square(
            veled:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("How many cigarettes do you smoke per day?"),
              SizedBox(
                height: 5,
              ),
              Text(icilenSigara.toInt().toString()),
              SizedBox(
                height: 10,
              ),
              Slider(
                min: 0,
                max: 30,
                value: icilenSigara,
                onChanged: (value) {
                  setState(() {
                    icilenSigara = value;
                  });
                },
              ),
            ]),
          ),
          square(
            veled:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("How many days a week do you exercise?"),
              SizedBox(
                height: 5,
              ),
              Text(spor.toInt().toString()),
              SizedBox(
                height: 10,
              ),
              Slider(
                min: 0,
                max: 7,
                value: spor,
                onChanged: (value) {
                  setState(() {
                    spor = value;
                  });
                },
              ),
            ]),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      print("womana tiklandi");
                      setState(() {
                        seciliCinsiyet = ("Woman");
                      });
                    },
                    child: square(
                        veled: forGender(
                      cinsiyet: FontAwesomeIcons.venus,
                      genderText: 'Woman',
                      defaults:
                          seciliCinsiyet == "Woman" ? Colors.pink : Colors.grey,
                    )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      print("mana tiklandi");

                      setState(() {
                        seciliCinsiyet = ("Man");
                      });
                    },
                    child: square(
                      veled: forGender(
                        cinsiyet: FontAwesomeIcons.mars,
                        genderText: 'Man',
                        defaults:
                            seciliCinsiyet == "Man" ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ButtonTheme(
            height: 100,
            child: TextButton(
              onPressed: () {
                print("Calculated");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResulPage(
                            UserData(
                                icilenSigara: icilenSigara,
                                seciliCinsiyet: seciliCinsiyet,
                                spor: spor,
                                uzunluk: uzunluk,
                                weight: weight),
                          )),
                );
              },
              child: Text('Calculate', style: TextStyle(color: Colors.black)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
