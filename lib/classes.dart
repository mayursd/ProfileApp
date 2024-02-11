import 'package:flutter/material.dart';

class UserInfo {
  final String profilePic;
  final String name;
  final String position;
  final String company;
  final String phone;
  final String email;
  final String address1;
  final String address2;
  final List<EducationInfo> education;
  final List<ProjectInfo> projects;

  UserInfo({
    required this.profilePic,
    required this.name,
    required this.position,
    required this.company,
    required this.phone,
    required this.email,
    required this.address1,
    required this.address2,
    required this.education,
    required this.projects,
  });
}

class EducationInfo {
  final String logo;
  final String name;
  final String gpa;

  EducationInfo({
    required this.logo,
    required this.name,
    required this.gpa,
  });
}

class ProjectInfo {
  final String image;
  final String name;

  ProjectInfo({
    required this.image,
    required this.name,
  });
}

class EducationWidget extends StatelessWidget {
  final String logo;
  final String name;
  final String gpa;

  const EducationWidget({
    required this.logo,
    required this.name,
    required this.gpa,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            logo,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(
            gpa,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
