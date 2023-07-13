import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/common_widgets/certification_chip.dart';
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

class IntroductionMobile extends ConsumerWidget {
  const IntroductionMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contacts = ref.read(contactRepositoryProvider).fetchContacts();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ref.watch(darkModeProvider)
            ? Image.asset(
                'assets/images/jiri_pillar_avatar_dark.png',
                height: 200,
              )
            : Image.asset(
                'assets/images/jiri_pillar_avatar_light.png',
                height: 200,
              ),
        gapH8,
        Text(
          context.localized.name,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        gapH4,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${context.localized.description} ",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20),
            ),
            const MagicIcon(),
          ],
        ),
        gapH8,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${context.localized.subDescription} ",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const FavoriteIcon(),
          ],
        ),
        gapH16,
        Row(
          children: [
            Image.asset(
              "assets/images/jiri_pillar_QR.png",
              width: 100,
              height: 100,
            ),
            gapW32,
            _buildResumeButton(ref),
          ],
        ),
        gapH8,
        ContactBar(contacts: contacts),
        gapH8,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localized.languages,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                gapH8,
                const CzechChip(),
                const EnglishChip(),
                const SpanishChip(),
                const GermanChip(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localized.certifications,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                gapH12,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CertificationChip(fileName: 'Azure_AI.png', certificationName: 'Azure AI Engineer Associate', isMobile: true),
                    CertificationChip(fileName: 'Azure_F.png', certificationName: 'Azure Fundamentals', isMobile: true),
                    CertificationChip(fileName: 'Azure_PBI.png', certificationName: 'Power BI Analyst', isMobile: true),
                  ],
                ),
                gapH12,
                const SizedBox(height: 2),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CertificationChip(fileName: 'AWS.png', certificationName: 'AWS Cloud Practitioner', isMobile: true),
                    CertificationChip(fileName: 'Android.png', certificationName: 'Associate Android Developer ', isMobile: true),
                    CertificationChip(
                        fileName: 'GCC_engineer.png', certificationName: 'GCP Associated Cloud Engineer', isMobile: true),
                  ],
                ),
                gapH12,
                const SizedBox(height: 2),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CertificationChip(
                        fileName: 'Databricks.png', certificationName: 'Databricks Lakehouse Fundamentals', isMobile: true),
                    CertificationChip(fileName: 'Elastic.png', certificationName: 'Elastic Certified Analyst', isMobile: true),
                    CertificationChip(fileName: 'Flourish.png', certificationName: 'Flourish Data Visualization', isMobile: true),
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
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 28),
      child: ResumeButton(),
    );
  }
}
