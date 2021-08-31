import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:root/const/const.dart';
import 'package:root/views/project.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController scrollController = ScrollController(
    keepScrollOffset: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _cardIcon('assets/menu.png'),
                      Spacer(),
                      _cardIcon('assets/not.png'),
                      SizedBox(
                        width: 20,
                      ),
                      _avatar(),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'projects',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      _cardOption('assets/map.png',width: 30, heigth: 30, haveBorder: true),
                      SizedBox(
                        width: 10,
                      ),
                      _cardOption('assets/candy.png',width: 30, heigth: 30),
                      SizedBox(
                        width: 10,
                      ),
                      _cardOption('assets/folhas.png',width: 30, heigth: 30),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(TextSpan(
                      text: '8',
                      style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: Color(0xff0875EE),
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ' ONGOING',
                          style: GoogleFonts.montserrat(
                            fontSize: 10,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                    _cardOption( 'assets/map2.png',
                        shadows: true,
                        heigth: 50,
                        width: 50,
                        color: Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(TextSpan(
                            text: 'Scotly',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: ' Managment',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                            ])),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            _cardIcon('assets/pincel.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Design Phase',
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            _cardPercent(title: '83%', color: Color(0xffDAF0FF), textColor: Color(0xff0875EE))
                          ],
                        ),
                      ],
                    )
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                controller: scrollController,
                itemCount: datas.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text.rich(TextSpan(
                        text: datas[index].day,
                        style: GoogleFonts.montserrat(
                            fontSize: 10,
                            color: datas[index].day == 'Q' &&
                                    datas[index].dayOfWeek == '4'
                                ? Color(0xff0875EE)
                                : Colors.grey.shade500,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: '  ' + datas[index].dayOfWeek,
                            style: GoogleFonts.montserrat(
                                fontSize: 10,
                                color: datas[index].day == 'Q' &&
                                        datas[index].dayOfWeek == '4'
                                    ? Color(0xff0875EE)
                                    : Colors.black),
                          ),
                        ])),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  _cardIcon('assets/verify.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Show time',
                    style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 250,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 250,
                    child: Column(
                      children: [
                        Text(
                          '8:00',
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          '9:00',
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          '10:00',
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: Color(0xff0875EE),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '11:00',
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '12:00',
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 120,
                          child: ListView(
                            controller: scrollController,
                            scrollDirection: Axis.horizontal,
                            children: [
                              _cardAtivity(),
                              _cardAtivity(),
                              _cardAtivity(),
                              _cardAtivity(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 40),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.grey.shade200,
                                        offset: Offset(4, 4),
                                        spreadRadius: 4,
                                        blurRadius: 8,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade200,
                                        offset: Offset(-4, 0),
                                        spreadRadius: 4,
                                        blurRadius: 8,
                                      ),
                                    ]),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 13,
                                  backgroundImage: AssetImage('assets/diamond.png'),
                                ),
                              ),
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: Color(0xff0875EE),
                              ),
                              Container(
                                height: 1,
                                width: 100,
                                color: Color(0xff0875EE),
                              ),
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: Color(0xff0875EE),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.grey.shade200,
                                        offset: Offset(4, 0),
                                        spreadRadius: 4,
                                        blurRadius: 8,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade200,
                                        offset: Offset(0, -4),
                                        spreadRadius: 4,
                                        blurRadius: 8,
                                      ),
                                    ]),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 13,
                                   backgroundImage: AssetImage('assets/figma.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, ),
                          child: Container(
                            height: 30,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Color(0xffDAF0FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        color: Color(0xff00A3FF),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 10),
                                      child: Row(children: [
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundImage:
                                                AssetImage('assets/anisio.jpg'),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundImage:
                                                AssetImage('assets/pedro.jpg'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Dashboard',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                    )),
                                    Spacer(),
                                    CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Colors.white,
                                            child: Center(
                                              child: Icon(Icons.phone, size: 9,),
                                            ),
                                          ),
                                          SizedBox(width: 10,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, ),
                          child: Container(
                            height: 30,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Color(0xffDAF0FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Color(0xff82EEE7),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 10),
                                      child: Row(children: [
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundImage:
                                                AssetImage('assets/henrique.jpg'),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundImage:
                                                AssetImage('assets/mvni.jpg'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Music',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                    )),
                                    Spacer(),
                                    _cardPercent(title: '48%', color: Colors.white, textColor: Colors.black),
                                          SizedBox(width: 10,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  _cardPercent({String title, Color color, Color textColor }) {
    return Container(
      height: 15,
      width: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
          child: Text(
        title,
        style: GoogleFonts.montserrat(
            fontSize: 10,
            color: textColor,
            fontWeight: FontWeight.bold),
      )),
    );
  }

  _cardAtivity() {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Project()));
      },
      child: Container(
        width: 150,
        height: 100,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(4, 4),
                spreadRadius: 4,
                blurRadius: 8,
              ),
              BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(-4, 0),
                spreadRadius: 4,
                blurRadius: 8,
              ),
            ]),
        child: Container(
          width: 150,
          height: 100,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(4, 4),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(-4, 0),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffFE6270),
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/henrique.jpg'),
                    ),
                  ),
                  Spacer(),
                  _cardPercent(title: '8:45', color: Color(0xffDAF0FF), textColor: Color(0xff0875EE))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'UX Team Conference',
                style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Row(
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundImage: AssetImage('assets/anisio.jpg'),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundImage: AssetImage('assets/pedro.jpg'),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xffFFECEE),
                    child: Text(
                      'MN',
                      style: GoogleFonts.montserrat(
                          fontSize: 5,
                          color: Color(0xffFE6271),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Go',
                    style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade500,
                    size: 7,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _cardIcon(String img) {
    return Container(
      width: 25,
      height: 25,
      child: Center(child: Image.asset(img, height: 25,),),
    );
  }

  _cardOption(String img,
      {bool shadows = false,
      double width = 25,
      double heigth = 25,
      Color color = Colors.white, bool haveBorder = false}) {
    return Container(
      width: width,
      height: heigth,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(7),
          border: haveBorder == true ? Border.all(width: 1, color: Color(0xffFE7066)) : Border.all(
            color: Colors.white,
          ),
          boxShadow: shadows == true
              ? <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(4, 4),
                    spreadRadius: 4,
                    blurRadius: 8,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(-4, 0),
                    spreadRadius: 4,
                    blurRadius: 8,
                  ),
                ]
              : []),
              child: Center(child: Image.asset(img),),
    );
  }

  _avatar() {
    return Stack(
      children: [
        Container(
          height: 30,
          width: 30,
          child: Container(
            height: 35,
            width: 35,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/mvni.jpg'), fit: BoxFit.fill),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: <BoxShadow>[]),
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            height: 15,
            width: 15,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Color(0xffF7F8F9),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xffFEEFB8),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Text(
                  '+',
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
