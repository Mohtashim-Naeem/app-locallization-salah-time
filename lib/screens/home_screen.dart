import 'package:flutter/material.dart';
import 'package:namaz_app/screens/namazTime.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color(0xff9fd9f0),
      backgroundColor: const Color.fromARGB(255, 15, 15, 15),
      // appBar: AppBar(
      //   centerTitle: true,
      //   // backgroundColor: Colors.red,
      //   backgroundColor: Color.fromARGB(255, 154, 23, 23),
      //   // backgroundColor: Color.fromARGB(255, 153, 0, 0),
      //   title: Text('Salah Time', style: ,),
      // ),

      appBar: AppBar(
        elevation: 3,
        // bottomOpacity: 2,

        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),
        // backgroundColor: Color.fromARGB(255, 154, 23, 23),

        title: Text(
          'Home Screen'.toUpperCase(),
          style: TextStyle(fontSize: height * 0.03),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const namazTime(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(width * 0.05),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 39, 39, 39),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: width * 0.01,
                          color: const Color.fromARGB(255, 154, 23, 23),
                        )),
                    width: width,
                    // height: height * 0.41,
                    // color: Color.fromARGB(255, 39, 39, 39),
                    child: Column(
                      children: [
                        Flexible(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Namaz Time',
                            style: TextStyle(
                                fontSize: width * 0.10, color: Colors.white),
                          ),
                        ),
                        Flexible(
                          child: Image.asset(
                            'images/salah.png',
                            height: height * 0.20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: GestureDetector(
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => QiblaScreenRoute(),))
                  // },
                  child: Container(
                    padding: EdgeInsets.all(width * 0.05),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 39, 39, 39),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: width * 0.01,
                          color: const Color.fromARGB(255, 154, 23, 23),
                        )),
                    // width: width * 0.90,
                    width: width,

                    // height: height * 0.40,
                    child: Column(
                      children: [
                        Flexible(
                          child: Text(
                            // softWrap: true,
                            textAlign: TextAlign.center,

                            'Qibla Direction',
                            style: TextStyle(
                                fontSize: width * 0.10, color: Colors.white),
                          ),
                        ),
                        Flexible(
                          child: Image.asset(
                            'images/qibla.png',
                            height: height * 0.20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
