class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? source;
  final String? preview;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.source,
    required this.preview,
  });
}

// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/project_image/bpl.jpg',
    title: 'Bangladesh Premiere Leauge',
    subtitle: 'This is an bol app.This is an bol app.This is an bol app.',
    source: 'https://github.com/alazad214/bpl-',
    preview: '',
  ),
  ProjectUtils(
    image: 'assets/project_image/foodapp.jpg',
    title: 'FoodApp',
    subtitle: 'This is a Food App.  ',
    source: 'https://github.com/alazad214/foodapp-2',
    preview: '',
  ),
  ProjectUtils(
    image: 'assets/project_image/newsapp.jpg',
    title: 'News App',
    subtitle: 'This is a News App ',
    source: 'https://github.com/alazad214/NewsApp',
    preview: '',
  ),
];
