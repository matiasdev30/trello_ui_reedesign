import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Project extends StatefulWidget {
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  bool _isWrite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _cardIcon('assets/box.png'),
                    SizedBox(
                      width: 10,
                    ),
                    _cardIcon('assets/msg.png'),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xffFE7066)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: CircleAvatar(
                        radius: 13,
                        backgroundImage: AssetImage('assets/mvni.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _cardIcon('assets/arrow.png', height: 15),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      width: 17,
                      height: 17,
                      child: Center(
                        child: _cardIcon('assets/pincel2.png'),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffF9EDFC),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'UI Design Team',
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 25,
                      width: 65,
                      padding: EdgeInsets.only(left: 7, right: 7),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              'Task 8',
                              style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            _cardIcon('assets/arrow.png', height: 12),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _isWrite == false
                        ? Text(
                            'Create profile page\nwith news',
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        : Container(
                            height: 44,
                            width: 176,
                            child: TextFormField(
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Create profile page\nwith news ',
                                hintStyle: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isWrite = _isWrite == true ? false : true;
                        });
                      },
                      child: Container(
                        width: 23,
                        height: 23,
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(30)),
                        child: _cardIcon('assets/edit.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xffFFECEE),
                      child: Text(
                        'MN',
                        style: GoogleFonts.montserrat(
                            fontSize: 7,
                            color: Color(0xffFE6271),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Mvni Null',
                      style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Members',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage('assets/anisio.jpg'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Color(0xffFFECEE),
                    child: Text(
                      'MN',
                      style: GoogleFonts.montserrat(
                          fontSize: 8,
                          color: Color(0xffFE6271),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage('assets/pedro.jpg'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage('assets/braulio.jpg'),
                  ),
                ]),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xffDCEEFA)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xffDCEEFA)),
                        child:
                            Center(child: Image.asset('assets/location.png')),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Monday, 19 October',
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '08:00 - 11:00 AM',
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    _cardIcon('assets/edit2.png', height: 17)
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 198,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
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
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chat',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            _cardIcon('assets/edit2.png', height: 11),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Braulio is typing...',
                              style: GoogleFonts.montserrat(
                                  fontSize: 10, color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xff00A3FF)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage('assets/braulio.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage('assets/pedro.jpg'),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    _cardIcon('assets/arrow.png', height: 13)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 13,
                      backgroundImage: AssetImage('assets/henrique.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xffFFF3F5),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xffFDE3E7),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(10))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(children: [
                                    Container(
                                      padding: EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: Color(0xffFE6271),
                                          size: 10,
                                        ),
                                      ),
                                    ),
                                  ]),
                                )),
                            Spacer(),
                            Text(
                              '1:29',
                              style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: Color(0xffFE6271),),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 18,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Color(0xffFBE8EA),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                          child: Text(
                        'Aa',
                        style: GoogleFonts.montserrat(
                            fontSize: 10,
                            color: Color(0xffFE6271),),
                      )),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                  Row(
                  children: [
                   Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xff00A3FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(10))),
                        child: Center(
                          child: Text(
                        'Ya, wi já terminei',
                        style: GoogleFonts.montserrat(
                            fontSize: 10,
                            color: Colors.white,),
                      )),
                      ),
                    ),
                    SizedBox(width: 10,),
                     CircleAvatar(
                      radius: 13,
                      backgroundImage: AssetImage('assets/anisio.jpg'),
                    ),
                  ],
                ),
              Spacer(),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(children: [
                  _cardIcon('assets/grafo.png'),
                  SizedBox(width: 5,),
                  Text(
                        'Message...',
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.grey.shade400,),
                      ),
                      Spacer(),
                      _cardIcon('assets/emoji.png'),
                  SizedBox(width: 5,),
                  _cardIcon('assets/recording.png'),
                  SizedBox(width: 5,),
                  _cardIcon('assets/send.png'),
                ],),
              )
              ],
            ),
            

          )
        ],
      ),
    );
  }

  _cardIcon(String img, {double height = 25}) {
    return Container(
      width: height,
      height: height,
      child: Center(
        child: Image.asset(
          img,
          height: 25,
        ),
      ),
    );
  }
}
