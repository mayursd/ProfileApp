import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'classes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    UserInfo userData = UserInfo(
        profilePic: 'assets/images/DSC_8343.jpg',
        name: 'John Doe',
        position: 'Software Engineer',
        company: 'ACME Enterprises',
        phone: '(312) 555-1212',
        email: 'john.doe@acme.com',
        address1: '10 W 31st St.',
        address2: 'Chicago, IL 60616',
        education: [
          EducationInfo(
              logo: 'assets/images/RiverdaleNEWlogo.png',
              name: 'Riverdale High',
              gpa: '4.0 GPA'),
          EducationInfo(
              name: 'Illinois Tech\nB.S. in C.S.',
              logo: 'assets/images/illinois_tech.png',
              gpa: '3.8 GPA'),
        ],
        projects: [
          ProjectInfo(
              image: 'assets/images/project1.png', name: 'Sentiment Analysis'),
          ProjectInfo(
              image: 'assets/images/project2.png', name: 'Gender and Age analysis'),
          ProjectInfo(
              image: 'assets/images/project3.png', name: 'Chatbot in Python'),
          ProjectInfo(
              image: 'assets/images/project4.png', name: 'DataSys Coin'),
        ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile App",
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber)),
      home: MyHomePage(
        userData: userData,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final UserInfo userData;

  const MyHomePage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(120, 90, 80, 120),
        elevation: 10.0,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        // shadowColor: Colors.grey,
        title: const Center(
          child: Text(
            'My Profile App',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.orange, Colors.white, Colors.blue, Colors.green],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Card(
                  elevation: 4.0,
                  color: const Color.fromARGB(120, 90, 80, 120),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          userData.profilePic,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  userData.name,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(userData.position,
                                    style: const TextStyle(color: Colors.white))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(userData.company,
                                    style: const TextStyle(color: Colors.white))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Card(
                  elevation: 4.0,
                  borderOnForeground: true,
                  color: const Color.fromARGB(120, 90, 80, 120),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(userData.phone,
                                    style: const TextStyle(color: Colors.white))
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: SvgPicture.asset(
                                    'assets/icons/@_icon.svg',
                                    height: 48,
                                    width: 48,
                                    matchTextDirection: true,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(userData.email,
                                    style: const TextStyle(color: Colors.white))
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.home, color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(userData.address1,
                                    style:
                                        const TextStyle(color: Colors.white)),
                                Text(userData.address2,
                                    style: const TextStyle(color: Colors.white))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Card(
                  elevation: 4.0,
                  color: const Color.fromARGB(120, 90, 80, 120),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 4.0),
                        child: Text(
                          'Education',
                          style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w900),
                        ),
                      ),
                      GridView(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, // Number of columns
                                crossAxisSpacing: 4.0,
                                childAspectRatio: 5,
                                mainAxisSpacing: 2,
                                mainAxisExtent: 75.0

                                // Spacing between rows
                                ),
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                userData.education[0].logo,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Center(
                              child: Text(
                            userData.education[0].name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          )),
                          Center(
                              child: Text(userData.education[0].gpa,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18))),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 15.0, bottom: 8.0),
                              child: Image.asset(
                                userData.education[1].logo,
                                color: Colors.white,
                                height: 120,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(.0),
                            child: Center(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                  children: [
                                    TextSpan(text: userData.education[1].name)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              userData.education[1].gpa,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Card(
                  elevation: 4.0,
                  color: const Color.fromARGB(120, 90, 80, 120),
                  child: Column(
                    children: [
                      const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Projects',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900, )),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                userData.projects[0].image,
                                width: 200.0, // Set the width as needed
                                height: 100.0, // Set the height as needed
                                fit: BoxFit
                                    .contain, // Adjust the fit based on your requirements
                              ),
                              Text(
                                userData.projects[0].name,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                userData.projects[1].image,
                                width: 200.0, // Set the width as needed
                                height: 100.0, // Set the height as needed
                                fit: BoxFit
                                    .contain, // Adjust the fit based on your requirements
                              ),
                              Text(
                                userData.projects[1].name,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  userData.projects[2].image,
                                  width: 200.0, // Set the width as needed
                                  height: 100.0, // Set the height as needed
                                  fit: BoxFit
                                      .contain, // Adjust the fit based on your requirements
                                ),
                                Text(
                                  userData.projects[2].name,
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  userData.projects[3].image,
                                  width: 200.0, // Set the width as needed
                                  height: 100.0, // Set the height as needed
                                  fit: BoxFit
                                      .contain, // Adjust the fit based on your requirements
                                ),
                                 Text(
                                  userData.projects[3].name,
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
