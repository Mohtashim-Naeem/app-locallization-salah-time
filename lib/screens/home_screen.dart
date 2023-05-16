import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:one_clock/one_clock.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String todayDate = "";

  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() {
    var date = DateTime.now();

    var parsedDate = DateTime.parse(
        '${date.year}-${date.month < 10 ? "0${date.month.toString()}" : date.month.toString()}-${date.day < 10 ? "0${date.day.toString()}" : date.day.toString()}');
    final DateFormat formatter = DateFormat('yMMMMd');
    todayDate = formatter.format(parsedDate);
  }

  Map<String, dynamic> salahTime = {
    'Al-Fajar': '4:24 AM',
    'Sunset': '5:48 AM',
    'Al-Dhuhr': '12:28 PM',
    'Al-Asr': '5:08 PM',
    'Al-Maghrib': '7:09 PM',
    'Al-Isha': '8:33 PM'
  };
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Color(0xff9fd9f0),
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 3,
        // bottomOpacity: 2,

        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white24,
        // backgroundColor: Color.fromARGB(255, 153, 0, 0),
        title: Text('Namaz Time'.toUpperCase()),
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
              height: height * 0.02,
            ),
            Center(
              child: Text(
                todayDate,
                style: TextStyle(fontSize: width * 0.1, color: Colors.white),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            DigitalClock(
                textScaleFactor: 1.8,
                showSeconds: true,
                isLive: true,
                digitalClockTextColor: Colors.red,
                datetime: DateTime.now()),
            SizedBox(
              height: height * 0.05,
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
                    '${salahTime['Al-Fajar']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.13,
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

                            '${salahTime['Al-Fajar']}',
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
                            '${salahTime['Al-Dhuhr']}',
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
                const Divider(color: Colors.white24, thickness: 2.5),
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
                    '${salahTime['Al-Dhuhr']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.13,
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

                            '${salahTime['Al-Dhuhr']}',
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
                            '${salahTime['Al-Asr']}',
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
                const Divider(color: Colors.white24, thickness: 2.5),
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
                    '${salahTime['Al-Asr']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.13,
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

                            '${salahTime['Al-Asr']}',
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
                            '${salahTime['Al-Maghrib']}',
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
                const Divider(color: Colors.white24, thickness: 2.5),
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
                    '${salahTime['Al-Maghrib']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.13,
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

                            '${salahTime['Al-Maghrib']}',
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
                            '${salahTime['Al-Isha']}',
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
                const Divider(color: Colors.white24, thickness: 2.5),
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
                    '${salahTime['Al-Isha']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        fontSize: width * 0.13,
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

                            '${salahTime['Al-Isha']}',
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
                            '${salahTime['Al-Fajar']}',
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
                const Divider(color: Colors.white24, thickness: 2.5),
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
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    '${salahTime['Sunset']}',
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        color: Colors.red,
                        fontSize: width * 0.13,
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

                            '${salahTime['Sunset']}',
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
                const Divider(color: Colors.white24, thickness: 2.5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
