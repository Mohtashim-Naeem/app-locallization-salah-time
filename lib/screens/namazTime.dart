import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

// import 'package:one_clock/one_clock.dart';

class namazTime extends StatefulWidget {
  const namazTime({super.key});

  @override
  State<namazTime> createState() => _namazTimeState();
}

class _namazTimeState extends State<namazTime> {
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
    // Theme Colors
    // ==================
    //  Color.fromARGB(255, 154, 23, 23),------RED
    // Color.fromARGB(255, 39, 39, 39)----------Grey
    // Color.fromARGB(255, 15, 15, 15)------------Black

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 15, 15),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded, size: width * 0.05)),
        elevation: 3,
        // bottomOpacity: 2,

        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),
        // backgroundColor: Color.fromARGB(255, 153, 0, 0),
        title: Text(
          'namazTime.AppBar',
          style: TextStyle(fontSize: width * 0.08),
        ).tr(),
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
            // DigitalClock(
            //     textScaleFactor: 1.8,
            //     showSeconds: true,
            //     isLive: true,
            //     digitalClockTextColor: const Color.fromARGB(255, 154, 23, 23),
            //     datetime: DateTime.now()),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 15, 15, 15),
              collapsedBackgroundColor: const Color.fromARGB(255, 39, 39, 39),

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
                    'namazTime.AlFajar',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ).tr(),
                  Chip(
                    side: const BorderSide(
                      // width: 0.0,
                      color: Color.fromARGB(255, 15, 15, 15),
                    ),
                    backgroundColor: const Color.fromARGB(255, 15, 15, 15),
                    // surfaceTintColor: Colors.transparent,
                    // backgroundColor: const Color.fromARGB(255, 15, 15, 15),
                    label: Text(
                      '${salahTime['Al-Fajar']}',
                      style: TextStyle(
                          fontFamily: 'DS-Digital',
                          fontSize: width * 0.13,
                          // fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 154, 23, 23)),
                    ),
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

                            'namazTime.start',

                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${salahTime['Al-Fajar']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'namazTime.end',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            '${salahTime['Al-Dhuhr']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  // trailing: Text(
                  //   'namazTime.end${Salah_Time['Al-Dhuhr']}',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w700,
                  //     color: Color.fromARGB(255, 153, 0, 0),
                  //   ),
                  // ),
                ),
                const Divider(
                    color: Color.fromARGB(255, 39, 39, 39), thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 15, 15, 15),

              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),
              collapsedBackgroundColor: const Color.fromARGB(255, 39, 39, 39),

              // collapsedBackgroundColor: Color.fromARGB(255, 39, 39, 39),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'namazTime.AlDhuhr',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ).tr(),
                  Chip(
                    side: const BorderSide(
                        // width: 0.0
                        ),
                    backgroundColor: const Color.fromARGB(255, 15, 15, 15),
                    label: Text(
                      '${salahTime['Al-Dhuhr']}',
                      style: TextStyle(
                          fontFamily: 'DS-Digital',
                          fontSize: width * 0.13,
                          // fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 154, 23, 23)),
                    ),
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

                            'namazTime.start',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${salahTime['Al-Dhuhr']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'namazTime.end',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            '${salahTime['Al-Asr']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                    color: Color.fromARGB(255, 39, 39, 39), thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 15, 15, 15),

              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),

              collapsedBackgroundColor: const Color.fromARGB(255, 39, 39, 39),
              iconColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'namazTime.AlAsr',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ).tr(),
                  Chip(
                    side: const BorderSide(
                        // width: 0.0
                        ),
                    backgroundColor: const Color.fromARGB(255, 15, 15, 15),
                    label: Text(
                      '${salahTime['Al-Asr']}',
                      style: TextStyle(
                          fontFamily: 'DS-Digital',
                          fontSize: width * 0.13,
                          // fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 154, 23, 23)),
                    ),
                  )
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

                            'namazTime.start',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${salahTime['Al-Asr']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'namazTime.end',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            '${salahTime['Al-Maghrib']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                    color: Color.fromARGB(255, 39, 39, 39), thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 15, 15, 15),

              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),
              collapsedBackgroundColor: const Color.fromARGB(255, 39, 39, 39),

              // collapsedBackgroundColor: Colors.white,
              iconColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'namazTime.AlMaghrib',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ).tr(),
                  Chip(
                    side: const BorderSide(
                        // width: 0.0
                        ),
                    backgroundColor: const Color.fromARGB(255, 15, 15, 15),
                    label: Text(
                      '${salahTime['Al-Maghrib']}',
                      style: TextStyle(
                          fontFamily: 'DS-Digital',
                          fontSize: width * 0.13,
                          // fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 154, 23, 23)),
                    ),
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

                            'namazTime.start',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${salahTime['Al-Maghrib']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'namazTime.end',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            '${salahTime['Al-Isha']}',
                            style: TextStyle(
                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontSize: width * 0.04,

                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                    color: Color.fromARGB(255, 39, 39, 39), thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 15, 15, 15),

              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),

              collapsedBackgroundColor: const Color.fromARGB(255, 39, 39, 39),
              // childrenPadding: EdgeInsets.only(top: 150, bottom: 200),
              iconColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'namazTime.AlIsha',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ).tr(),
                  Chip(
                    side: const BorderSide(
                        // width: 0.0
                        ),
                    backgroundColor: const Color.fromARGB(255, 15, 15, 15),
                    label: Text(
                      '${salahTime['Al-Isha']}',
                      style: TextStyle(
                          fontFamily: 'DS-Digital',
                          fontSize: width * 0.13,
                          // fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 154, 23, 23)),
                    ),
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

                            'namazTime.start',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${salahTime['Al-Isha']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'namazTime.end',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            '${salahTime['Al-Fajar']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                    color: Color.fromARGB(255, 39, 39, 39), thickness: 2.5),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ExpansionTile(
              backgroundColor: const Color.fromARGB(255, 15, 15, 15),
              collapsedBackgroundColor: const Color.fromARGB(255, 39, 39, 39),
              collapsedIconColor: Colors.white,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // collapsedBackgroundColor: Color.fromARGB(255, 153, 0, 0),
              // collapsedBackgroundColor: Color.fromARGB(255, 39, 39, 39),

              // collapsedBackgroundColor: Colors.white,
              // childrenPadding: EdgeInsets.only(top: 50, bottom: 25),
              iconColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'namazTime.Sunset',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.06,
                      // fontWeight: FontWeight.w500
                    ),
                  ).tr(),
                  const SizedBox(
                    width: 15,
                  ),
                  Chip(
                    side: const BorderSide(
                        // width: 0.0
                        ),
                    backgroundColor: const Color.fromARGB(255, 15, 15, 15),
                    label: Text(
                      '${salahTime['Sunset']}',
                      style: TextStyle(
                          fontFamily: 'DS-Digital',
                          color: const Color.fromARGB(255, 154, 23, 23),
                          fontSize: width * 0.13,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              children: <Widget>[
                ListTile(
                  // title: Text(
                  //   // Salah_Time['Al-Fajar'],
                  //   'namazTime.start${Salah_Time['Sunset']}',
                  //   style: const TextStyle(
                  //     fontWeight: FontWeight.w700,
                  //     color: Color.fromARGB(255, 153, 0, 0),
                  //   ),
                  // ),
                  // trailing: Text(
                  //   'namazTime.endAfter 12 minutes!',
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

                            'namazTime.start',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            // Salah_Time['Al-Fajar'],

                            '${salahTime['Sunset']}',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'namazTime.end',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ).tr(),
                          Text(
                            'namazTime.maqrooh',
                            style: TextStyle(
                              fontSize: width * 0.04,

                              fontFamily:
                                  'DS-Digital', //DS-Digital IS CUSTOM FONT

                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 154, 23, 23),
                            ),
                          ).tr(),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                    color: Color.fromARGB(255, 39, 39, 39), thickness: 2.5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
