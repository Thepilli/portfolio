import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/common_widgets/language_chips.dart';
import 'package:portfolio/src/constants/sizes.dart';
import 'package:portfolio/src/features/introduction/data/contact_repository.dart';
import 'package:portfolio/src/features/introduction/data/resume_repository.dart';
import 'package:portfolio/src/features/introduction/presentation/widgets/contact_bar.dart';
import 'package:portfolio/src/features/introduction/presentation/widgets/favorite_icon.dart';
import 'package:portfolio/src/features/introduction/presentation/widgets/magic_icon.dart';
import 'package:portfolio/src/features/introduction/presentation/widgets/resume_button.dart';
import 'package:portfolio/src/features/main/presentation/provider/dark_mode_controller.dart';
import 'package:portfolio/src/localization/localized_build_context.dart';
import 'package:portfolio/src/common_widgets/certification_chip.dart';

class IntroductionDesktop extends ConsumerWidget {
  const IntroductionDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contacts = ref.read(contactRepositoryProvider).fetchContacts();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ref.watch(darkModeProvider)
            ? Image.asset(
                'assets/images/jiri_pillar_avatar_dark.png',
                height: 300,
              )
            : Image.asset(
                'assets/images/jiri_pillar_avatar_light.png',
                height: 300,
              ),
        gapH8,
        Text(
          context.localized.name,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        gapH4,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${context.localized.description} ",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const MagicIcon(),
          ],
        ),
        gapH8,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                "${context.localized.subDescription} ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const FavoriteIcon(),
          ],
        ),
        _buildResumeButton(ref),
        gapH8,
        Image.asset(
          "assets/images/jiri_pillar_QR.png",
          width: 150,
          height: 150,
        ),
        const Spacer(),
        gapH8,
        ContactBar(contacts: contacts),
        gapH8,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localized.languages,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                gapH8,
                const CzechChip(),
                const EnglishChip(),
                const SpanishChip(),
                const GermanChip(),
              ],
            ),
            gapW32,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localized.certifications,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                gapH12,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CertificationChip(
                        fileName: 'Azure_AI.png', certificationName: 'Azure AI Engineer Associate', isMobile: false),
                    CertificationChip(fileName: 'Azure_F.png', certificationName: 'Azure Fundamentals', isMobile: false),
                    CertificationChip(fileName: 'Azure_PBI.png', certificationName: 'Power BI Analyst', isMobile: false),
                  ],
                ),
                gapH12,
                const SizedBox(height: 2),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CertificationChip(fileName: 'AWS.png', certificationName: 'AWS Cloud Practitioner', isMobile: false),
                    CertificationChip(
                        fileName: 'Android.png', certificationName: 'Associate Android Developer ', isMobile: false),
                    CertificationChip(
                        fileName: 'GCC_engineer.png', certificationName: 'GCP Associated Cloud Engineer', isMobile: false),
                  ],
                ),
                gapH12,
                const SizedBox(height: 2),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CertificationChip(
                        fileName: 'Databricks.png', certificationName: 'Databricks Lakehouse Fundamentals', isMobile: false),
                    CertificationChip(fileName: 'Elastic.png', certificationName: 'Elastic Certified Analyst', isMobile: false),
                    CertificationChip(
                        fileName: 'Flourish.png', certificationName: 'Flourish Data Visualization', isMobile: false),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildResumeButton(WidgetRef ref) {
    final resumes = ref.watch(resumeRepositoryProvider).fetchLocalizedResumes();
    if (resumes.isEmpty) return const SizedBox.shrink();
    return const Column(
      children: [
        gapH40,
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: ResumeButton(),
        ),
      ],
    );
  }
}
