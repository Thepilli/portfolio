import 'package:portfolio/src/features/experience/domain/experience.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portfolio/src/localization/app_localizations_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'experience_repository.g.dart';

@riverpod
ExperienceRepository experienceRepository(ExperienceRepositoryRef ref) {
  final appLocalizations = ref.watch(appLocalizationsProvider);
  return ExperienceRepository(appLocalizations);
}

class ExperienceRepository {
  ExperienceRepository(this._appLocalizations);

  final AppLocalizations _appLocalizations;

  List<Experience> fetchExperiences() {
    return [
      Experience(
        startDate: "2023",
        endDate: _appLocalizations.resumePresent,
        job: _appLocalizations.appDevJobTitle,
        company: " ",
        description: _appLocalizations.appDevJobDescription,
        technologies: [
          "Flutter",
          "Dart",
          "Firebase",
          "Figma",
          "Python",
          "git",
          "AI",
          "Prompt engineering",
          "iOS",
          "Android",
          "REST API",
          "Photoshop CC",
          "SQLite",
          "IoT",
          "Xcode",
          "Android Studio",
          "Postman"
        ],
      ),
      Experience(
        startDate: "2022",
        endDate: "2023",
        job: _appLocalizations.senDataScJobTitle,
        company: "Wunderman Thompson",
        description: _appLocalizations.senDataScJobDescription,
        technologies: [
          "Azure",
          "IoT",
          "Power Platform",
          "VBA",
          "Python",
          "Snowflake",
          "Databricks",
          "Tableau",
          "Flourish",
          "DataStudio",
          "BI",
          "Virtual assistant",
          "Dashboard creator",
          "Google Analytics",
          "REST API",
          "Automation"
        ],
      ),
      Experience(
        startDate: "2019",
        endDate: "2022",
        job: _appLocalizations.busIntConJobTitle,
        company: "Accenture",
        description: _appLocalizations.busIntConJobDescription,
        technologies: [
          "Azure",
          "RStudio Connect",
          "Jenkins",
          "DevOps",
          "Conversational AI",
          "Text Analytics",
          "Natural Language Processing",
          "BI",
          "AWS",
          "JIRA",
          "Xcode",
          "Android Studio"
        ],
      ),
      Experience(
        startDate: "2017",
        endDate: "2019",
        job: _appLocalizations.busIntAnaJobTitle,
        company: "Accenture",
        description: _appLocalizations.busIntAnaJobDescription,
        technologies: [
          "Azure",
          "RStudio Connect",
          "Jenkins",
          "DevOps",
          "Conversational AI",
          "Text Analytics",
          "Natural Language Processing",
          "BI",
          "AWS",
          "JIRA",
          "",
        ],
      ),
    ];
  }
}
