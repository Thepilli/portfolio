import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/localization/localized_build_context.dart';

class CzechChip extends ConsumerWidget {
  const CzechChip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Chip(
        avatar: Image.asset(
          'assets/images/languages/Czech.png',
          height: 100,
        ),
        label: Text(
          context.localized.czeLevel,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        side: BorderSide.none,
      ),
    );
  }
}

class EnglishChip extends ConsumerWidget {
  const EnglishChip({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Chip(
        avatar: Image.asset(
          'assets/images/languages/English.png',
          height: 200,
        ),
        label: Text(
          context.localized.engLevel,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        side: BorderSide.none,
      ),
    );
  }
}

class SpanishChip extends ConsumerWidget {
  const SpanishChip({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Chip(
        avatar: Image.asset(
          'assets/images/languages/Spanish.png',
          height: 200,
        ),
        label: Text(
          context.localized.spaLevel,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        side: BorderSide.none,
      ),
    );
  }
}

class GermanChip extends ConsumerWidget {
  const GermanChip({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Chip(
        avatar: Image.asset(
          'assets/images/languages/German.png',
          height: 200,
        ),
        label: Text(
          context.localized.gerLevel,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        side: BorderSide.none,
      ),
    );
  }
}
