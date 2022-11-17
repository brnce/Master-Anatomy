class Tutor {
  final String authorUrl;
  final String name;
  final String course;
  final String bio;
  final String background;
  final String notes;

  Tutor({
    required this.authorUrl,
    required this.name,
    required this.course,
    required this.bio,
    required this.background,
    required this.notes,
  });
}

List<Tutor> tutors = [
  Tutor(
    authorUrl: 'assets/images/soren_huerta.png',
    name: 'Soren Huerta',
    course: 'Digestive System',
    bio: '''I have a degree in Nursing (Adult) and have tutored for the past 2 years. I am a friendly and supportive person who gets excellent  results by making lessons fun as well as  informative.''',
    background: 'BSc Nursing (Adult)',
    notes: 'hell0',
  ),
  Tutor(
    authorUrl: 'assets/images/rosemary_patriarco.png',
    name: 'Rosemary Patriarco',
    course: 'Immune System',
    bio: '''I have a degree in Nursing (Adult) and have tutored for the past 2 years. I am a friendly and supportive person who gets excellent results by making lessons fun as well as informative.''',
    background: 'Bsc Mental Health Nursing ',
    notes: 'hello',
  ),
  Tutor(
    authorUrl: 'assets/images/jawara_jela.png',
    name: 'Jawara Jela',
    course: 'Urinary Systems',
    bio: '''I have a degree in Nursing (Adult) and have tutored for the past 2 years. I am a friendly and supportive person who gets excellent results by making lessons fun as well as informative.''',
    background: 'Nurse Practitioner',
    notes: 'hello',
  ),
];