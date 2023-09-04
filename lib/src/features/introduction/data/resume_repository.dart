import 'package:portfolio/src/features/introduction/domain/resume.dart';
import 'package:portfolio/src/localization/app_localizations_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'resume_repository.g.dart';

@riverpod
ResumeRepository resumeRepository(ResumeRepositoryRef ref) {
  final appLocalizations = ref.watch(appLocalizationsProvider);
  return ResumeRepository(appLocalizations);
}

class ResumeRepository {
  ResumeRepository(this._appLocalizations);

  final AppLocalizations _appLocalizations;

  List<Resume> fetchLocalizedResumes() {
    return [
      Resume(
        language: _appLocalizations.englishLanguage,
        url: "https://drive.google.com/file/d/1dXVe0g1-BMubRTwsjdk9-YrvPmGBfo8P/view?usp=sharing",
      ),
      Resume(
        language: _appLocalizations.czechLanguage,
        url: "https://drive.google.com/file/d/1jVBQqJIRhJw5IMqLUMYUmo_wSk7iawha/view?usp=sharing",
      ),
    ];
  }
}
