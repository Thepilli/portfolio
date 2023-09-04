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
        technologies: ["Flutter", "Dart", "Riverpod", "Responsive UI", "Internationalization"],
        url: "https://github.com/Thepilli/portfolio",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/portfolio/main/assets/images/Portfolio_dark.png",
      ),
      Project(
        title: "Jidlo je lek",
        description: _appLocalizations.projectOneDescription,
        technologies: ["Flutter", "Dart", "Firebase", "GetX", "Authentication"],
        url: "https://github.com/Thepilli/jidlo_je_lek",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/jidlo_je_lek/main/assets/jidlo_je_lek_screens.png",
      ),
      Project(
        title: "Boba Tea application",
        description: _appLocalizations.projectTwoDescription,
        technologies: ["Flutter", "Dart", "Firebase", "Provider", "Authentication", "Rive Animation"],
        url: "https://github.com/Thepilli/bubble_tea_app",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/bubble_tea_app/main/assets/screenshots/boba_tea_app.png",
      ),
      Project(
        title: "Responsive Login UI",
        description: _appLocalizations.projectThreeDescription,
        technologies: ["Flutter", "Dart", "Firebase", "Google", "Authentication", "Responsive UI", "Provider"],
        url: "https://github.com/Thepilli/authentication_app",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/authentication_app/main/assets/screenshots/authentication_app.png",
      ),
      Project(
        title: "EV Control Hub App",
        description: _appLocalizations.projectSevenDescription,
        technologies: ["Flutter", "Dart", "Animation"],
        url: "https://github.com/Thepilli/EV_controller_app.git",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/EV_controller_app/main/assets/EV_controller_app.png",
      ),
      Project(
        title: "MexiEats food ordering App with backend",
        description: _appLocalizations.projectEightDescription,
        technologies: [
          "Flutter",
          "Dart",
          "Firebase",
          "Google",
          "Authentication",
          "Responsive UI",
          "Provider",
          "Web Application",
          "Admin Panel"
        ],
        url: "https://github.com/Thepilli/foda_application.git",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/foda_application/main/assets/foda_application.png",
      ),
      Project(
        title: "Muzik App",
        description: _appLocalizations.projectNineDescription,
        technologies: ["Figma", "Photoshop CC", "Material 3", "Cupertino", "Lunacy"],
        url: "https://github.com/Thepilli/muzik_app.git",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/muzik_app/main/assets/muzik_app.png",
      ),
      Project(
        title: "Ten Ta To",
        description: _appLocalizations.projectTenDescription,
        technologies: ["Figma", "Photoshop CC", "Material 3", "Cupertino", "Lunacy"],
        url: "https://github.com/Thepilli/gender_name.git",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/gender_name/main/assets/gender_name.png",
      ),
      Project(
        title: "UI designs",
        description: _appLocalizations.projectFourDescription,
        technologies: ["Figma", "Photoshop CC", "Material 3", "Cupertino", "Lunacy"],
        url: "https://raw.githubusercontent.com/Thepilli/cookbook/main/assets/Dashboard.png",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/cookbook/main/assets/Overview.png",
      ),
      Project(
        title: "The Wall",
        description: _appLocalizations.projectFiveDescription,
        technologies: ["OpenAI", "ChatGPT", "Flutter", "Dart", "Firebase", "Google", "Authentication", "Provider"],
        url: "https://github.com/Thepilli/the_wall_app",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/the_wall_app/main/assets/screenshots/the_wall.jpg",
      ),
      Project(
        title: "ChatbotGPT",
        description: _appLocalizations.projectSixDescription,
        technologies: ["OpenAI", "ChatGPT", "Flutter", "Dart", "Firebase", "Google", "Authentication", "Provider"],
        url: "https://github.com/Thepilli/chatbot_gpt",
        photoUrl: "https://raw.githubusercontent.com/Thepilli/the_wall_app/main/assets/screenshots/ChatGPT.png",
      ),
    ];
  }
}
