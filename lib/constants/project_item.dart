class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? url;

  ProjectUtils(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.url});
}

// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      image: 'assets/project_image/calculator.jpg',
      title: 'Calculator UI',
      subtitle: 'This is a responsive Calculator UI App',
      url: 'https://flutter.dev'),
  ProjectUtils(
      image: 'assets/project_image/bpl.jpg',
      title: 'Bangladesh Premiere Leauge',
      subtitle: 'This is an bol app.',
      url: 'https://flutter.dev'),
  ProjectUtils(
      image: 'assets/project_image/foodapp.jpg',
      title: 'FoodApp',
      subtitle: 'This is a Food App ',
      url: 'https://flutter.dev'),
  ProjectUtils(
      image: 'assets/project_image/newsapp.jpg',
      title: 'News App',
      subtitle: 'This is a News App ',
      url: ''),
];
