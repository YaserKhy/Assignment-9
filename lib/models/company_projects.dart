import 'package:assignment9/models/project_a.dart'; // ProjectA class
import 'package:assignment9/models/project_b.dart'; // ProjectB class
import 'package:assignment9/models/project_c.dart'; // ProjectC class
import 'package:assignment9/models/project_d.dart'; // ProjectD class

// class to represent a company projects
class CompanyProjects {
  final ProjectA projectA;
  final ProjectB projectB;
  final ProjectC projectC;
  final ProjectD projectD;

  CompanyProjects(
      {required this.projectA,
      required this.projectB,
      required this.projectC,
      required this.projectD});

  factory CompanyProjects.fromJson(Map<String, dynamic> json) {
    return CompanyProjects(
        projectA: ProjectA.fromJson(json['projectA']),
        projectB: ProjectB.fromJson(json['projectB']),
        projectC: ProjectC.fromJson(json['projectC']),
        projectD: ProjectD.fromJson(json['projectD']));
  }

  Map<String,dynamic> toJson() {
    return {
      'projectA' : projectA.toJson(),
      'projectB' : projectB.toJson(),
      'projectC' : projectC.toJson(),
      'projectD' : projectD.toJson()
    };
  }
}