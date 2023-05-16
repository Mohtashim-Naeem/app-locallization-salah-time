import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, dynamic> Salah_Time = {
    'Al-Fajar': '4:24',
    'Sunset': '5:48',
    'Al-Dhuhr': '12:28',
    'Al-Asr': '5:08',
    'Al-Maghrib': '7:09',
    'Al-Isha': '8:33'
  };
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Color(0xff9fd9f0),
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        // backgroundColor: Color.fromARGB(255, 153, 0, 0),
        title: Text('Salah Time'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          // itemExtent: 50.0,

          // padding: EdgeInsets.only(),
          // scrollDirection: Axis.vertical,
          // shrinkWrap: true,
          // physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: height * 0.10,
            ),
            ExpansionTile(
              backgroundColor: Colors.black,
              collapsedBackgroundColor: Colors.white24,

              collapsedIconColor: Colors.white,
              iconColor: Colors.white,

              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(15),
              // ),

              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AL-Fajar',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '${Salah_Time['Al-Fajar']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.15,
                        // fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                ],
              ),
              children: <Widget>[
                ListTile(
                  // tileColor: Color.fromARGB(255, 0, 24, 58),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            // Salah_Time['Al-Fajar'],

                            'Start time: ',

                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${Salah_Time['Al-Fajar']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'End time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${Salah_Time['Al-Dhuhr']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  // trailing: Text(
                  //   'End time: ${Salah_Time['Al-Dhuhr']}',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w700,
                  //     color: Color.fromARGB(255, 153, 0, 0),
                  //   ),
                  // ),
                ),
                Divider(color: Colors.white24, thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: Colors.black,

              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),
              collapsedBackgroundColor: Colors.white24,

              // collapsedBackgroundColor: Colors.white24,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AL-Dhuhr',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '${Salah_Time['Al-Dhuhr']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.15,
                        // fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                ],
              ),
              children: <Widget>[
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            // Salah_Time['Al-Fajar'],

                            'Start time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${Salah_Time['Al-Dhuhr']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'End time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${Salah_Time['Al-Asr']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.white24, thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: Colors.black,

              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),

              collapsedBackgroundColor: Colors.white24,
              iconColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AL-Asr',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '${Salah_Time['Al-Asr']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.15,
                        // fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                ],
              ),
              children: <Widget>[
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            // Salah_Time['Al-Fajar'],

                            'Start time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${Salah_Time['Al-Asr']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'End time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${Salah_Time['Al-Maghrib']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.white24, thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: Colors.black,

              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),
              collapsedBackgroundColor: Colors.white24,

              // collapsedBackgroundColor: Colors.white,
              iconColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AL-Maghrib',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '${Salah_Time['Al-Maghrib']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.15,
                        // fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                ],
              ),
              children: <Widget>[
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            // Salah_Time['Al-Fajar'],

                            'Start time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${Salah_Time['Al-Maghrib']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'End time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${Salah_Time['Al-Isha']}',
                            style: TextStyle(
                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontSize: width * 0.04,

                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.white24, thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: Colors.black,

              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),

              collapsedBackgroundColor: Colors.white24,
              // childrenPadding: EdgeInsets.only(top: 150, bottom: 200),
              iconColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AL-Isha',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '${Salah_Time['Al-Isha']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.15,
                        // fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                ],
              ),
              children: <Widget>[
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            // Salah_Time['Al-Fajar'],

                            'Start time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${Salah_Time['Al-Isha']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'End time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${Salah_Time['Al-Fajar']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.white24, thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: Colors.black,
              collapsedBackgroundColor: Colors.white24,
              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),
              // collapsedBackgroundColor: Colors.white24,

              // collapsedBackgroundColor: Colors.white,
              // childrenPadding: EdgeInsets.only(top: 50, bottom: 25),
              iconColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sunset',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.06,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '${Salah_Time['Sunset']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        color: Colors.red,
                        fontSize: width * 0.15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              children: <Widget>[
                ListTile(
                  // title: Text(
                  //   // Salah_Time['Al-Fajar'],
                  //   'Start time: ${Salah_Time['Sunset']}',
                  //   style: const TextStyle(
                  //     fontWeight: FontWeight.w700,
                  //     color: Color.fromARGB(255, 153, 0, 0),
                  //   ),
                  // ),
                  // trailing: Text(
                  //   'End time: After 12 minutes!',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w700,
                  //     color: Color.fromARGB(255, 153, 0, 0),
                  //   ),
                  // ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            // Salah_Time['Al-Fajar'],

                            'Start time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${Salah_Time['Sunset']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'End time: ',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'After 12 minutes!',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.white24, thickness: 2.5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
