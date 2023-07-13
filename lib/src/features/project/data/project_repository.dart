import 'package:portfolio/src/features/project/domain/project.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portfolio/src/localization/app_localizations_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_repository.g.dart';

@riverpod
ProjectRepository projectRepository(ProjectRepositoryRef ref) {
  final appLocalizations = ref.watch(appLocalizationsProvider);
  return ProjectRepository(appLocalizations);
}

class ProjectRepository {
  ProjectRepository(this._appLocalizations);

  final AppLocalizations _appLocalizations;

  List<Project> fetchProjects() {
    return [
      Project(
        title: "Portfolio",
        description: _appLocalizations.portfolioDescription,
        technologies: ["Flutter", "Dart", "Firebase"],
        url: "",
        photoUrl:
            "https://firebasestorage.googleapis.com/v0/b/my-api-endpoint.appspot.com/o/linkHolder.png?alt=media&token=9ace1934-a05f-4ad1-9ac3-74f78de96173",
      ),
      Project(
        title: "Project 1",
        description: _appLocalizations.projectOneDescription,
        technologies: [
          "Node.js",
          "Express",
          "TypeScript",
          "MongoDB",
          "Docker",
        ],
        url: "",
        photoUrl:
            "https://firebasestorage.googleapis.com/v0/b/my-api-endpoint.appspot.com/o/linkHolder.png?alt=media&token=9ace1934-a05f-4ad1-9ac3-74f78de96173",
      ),
      Project(
        title: "Project 2",
        description: _appLocalizations.projectTwoDescription,
        technologies: ["Flutter", "Dart"],
        url: "",
        photoUrl:
            "https://firebasestorage.googleapis.com/v0/b/my-api-endpoint.appspot.com/o/linkHolder.png?alt=media&token=9ace1934-a05f-4ad1-9ac3-74f78de96173",
      ),
      Project(
        title: "Project 3",
        description: _appLocalizations.projectThreeDescription,
        technologies: ["Symfony", "PHP", "Bootstrap", "MariaDB", "Apache"],
        url: "",
        photoUrl:
            "https://firebasestorage.googleapis.com/v0/b/my-api-endpoint.appspot.com/o/linkHolder.png?alt=media&token=9ace1934-a05f-4ad1-9ac3-74f78de96173",
      ),
      Project(
        title: "Project 4",
        description: _appLocalizations.projectFourDescription,
        technologies: ["Flask", "Python", "MariaDB", "Docker"],
        url: "",
        photoUrl:
            "https://firebasestorage.googleapis.com/v0/b/my-api-endpoint.appspot.com/o/linkHolder.png?alt=media&token=9ace1934-a05f-4ad1-9ac3-74f78de96173",
      ),
      Project(
        title: "Project 5",
        description: _appLocalizations.projectFiveDescription,
        technologies: ["JavaFX", "Java", "MariaDB"],
        url: "",
        photoUrl:
            "https://firebasestorage.googleapis.com/v0/b/my-api-endpoint.appspot.com/o/linkHolder.png?alt=media&token=9ace1934-a05f-4ad1-9ac3-74f78de96173",
      ),
    ];
  }
}
