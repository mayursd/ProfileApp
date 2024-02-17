import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'classes.dart';

class EducationInfo {
  final String name;
  final String gpa;
  final String logo;

  EducationInfo({
    required this.name,
    required this.gpa,
    required this.logo,
  });
}

class ProjectInfo {
  final String name;
  final String image;

  ProjectInfo({
    required this.name,
    required this.image,
  });
}

class UserData {
  final String name;
  final String position;
  final String company;
  final String profilePic;
  final String phone;
  final String email;
  final String address1;
  final String address2;
  final List<EducationInfo> education;
  final List<ProjectInfo> projects;

  UserData({
    required this.name,
    required this.position,
    required this.company,
    required this.profilePic,
    required this.phone,
    required this.email,
    required this.address1,
    required this.address2,
    required this.education,
    required this.projects,
  });
}

class UserDataWidget extends StatelessWidget {
  final UserData userData;

  const UserDataWidget({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}


class ExtendedUserDataWidget extends StatelessWidget {
  final UserData userData;

  const ExtendedUserDataWidget({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
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
                            Column(crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 36.0, top: 8.0),
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
                );
                
  }

  
}


class EducationInfoWidget extends StatelessWidget {
  final List<EducationInfo> educationInfoList;

  const EducationInfoWidget({Key? key, required this.educationInfoList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
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
                      for (var userData in educationInfoList)
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
                                userData.logo,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Center(
                              child: Text(
                            userData.name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          )),
                          Center(
                              child: Text(userData.gpa,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18))),
                          
                        ],
                      ),
                    ],
                  ),
                );
                
  }
}

class ProjectInfoWidget extends StatelessWidget {
  final List<ProjectInfo> projects;

  const ProjectInfoWidget({Key? key, required this.projects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      color: const Color.fromARGB(120, 90, 80, 120),
      child: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Projects',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: (projects.length / 3).ceil(),
            itemBuilder: (BuildContext context, int index) {
              int startIndex = index * 3;
              int endIndex = (index + 1) * 3;

              if (endIndex > projects.length) {
                endIndex = projects.length;
              }

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: projects.sublist(startIndex, endIndex).map((project) {
                  return Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          project.image,
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          project.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final UserData userData;

  const MyHomePage({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(120, 90, 80, 120),
        elevation: 10.0,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
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
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                UserDataWidget(userData: userData),
                const SizedBox(height: 4),
                ExtendedUserDataWidget(userData: userData),
                const SizedBox(height: 4),
                EducationInfoWidget(educationInfoList: userData.education),
                const SizedBox(height: 4),
                ProjectInfoWidget(projects: userData.projects),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: MyHomePage(
        userData: UserData(
          name: 'John Doe',
          position: 'Software Engineer',
          company: 'Tech Co.',
          profilePic: 'assets/images/DSC_8343.jpg',
          phone: '+123456789',
          email: 'john.doe@example.com',
          address1: '123 Main St',
          address2: 'Apt 45, Cityville',
          education: [
            EducationInfo(
              name: 'Illinois Institute of Technology',
              gpa: '3.8 GPA',
              logo: 'assets/images/illinois_tech.png',
            ),
            EducationInfo(
              name: 'RiverDale School',
              gpa: '3.5 GPA',
              logo: 'assets/images/RiverdaleNEWlogo.png',
            ),
            
          ],
          projects: [
            ProjectInfo(
              name: 'Project X',
              image: 'assets/images/project1.png',
            ),
            ProjectInfo(
              name: 'Project Y',
              image: 'assets/images/project2.png',
            ),
            ProjectInfo(
              name: 'Project Z',
              image: 'assets/images/project3.png',
            ),
            ProjectInfo(
              name: 'Project Z',
              image: 'assets/images/project4.png',
            ),
            ProjectInfo(
              name: 'Project Z',
              image: 'assets/images/project4.png',
            ),
            ProjectInfo(
              name: 'Project Z',
              image: 'assets/images/project4.png',
            ),
          ],
        ),
      ),
    ),
  );
}
