class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/project_image/calculator.jpg',
    title: 'Calculator UI',
    subtitle: 'This is a responsive Calculator UI App',
  ),
  ProjectUtils(
    image: 'assets/project_image/bpl.jpg',
    title: 'Bangladesh Premiere Leauge',
    subtitle: 'This is an bol app.',
  ),
  ProjectUtils(
    image: 'assets/project_image/foodapp.jpg',
    title: 'FoodApp',
    subtitle: 'This is a Food App ',
  ),
  ProjectUtils(
    image: 'assets/project_image/newsapp.jpg',
    title: 'News App',
    subtitle: 'This is a News App ',
  ),
];
