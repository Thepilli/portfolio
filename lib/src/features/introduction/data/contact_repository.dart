import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/src/features/introduction/domain/contact.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_repository.g.dart';

@riverpod
ContactRepository contactRepository(ContactRepositoryRef ref) {
  return ContactRepository();
}

class ContactRepository {
  List<Contact> fetchContacts() {
    return const [
      Contact(
        tooltip: "LinkedIn",
        url: "www.linkedin.com/in/jiri-pillar-79708b121",
        icon: FontAwesomeIcons.linkedin,
      ),
      Contact(
        tooltip: "Github",
        url: "https://github.com/Thepilli",
        icon: FontAwesomeIcons.github,
      ),
      Contact(
        tooltip: "jiri.pillar@gmail.com",
        url: "mailto:jiri.pillar@gmail.com",
        icon: FontAwesomeIcons.solidEnvelope,
      ),
      Contact(
        tooltip: "+420 735 236 948",
        url: "tel:+420735236948",
        icon: FontAwesomeIcons.phone,
      ),
    ];
  }
}
