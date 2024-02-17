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
