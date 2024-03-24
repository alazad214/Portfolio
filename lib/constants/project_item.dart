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
    image: 'assets/project_image/noteproject.png',
    title: 'Notepad-Hive',
    subtitle:
        'This application is made with Flutter. It has a local database created with Hive..',
    source: 'https://github.com/alazad214/Notepad-pro',
    preview:
        'https://notepad214.netlify.app/?fbclid=IwAR1oWw9FKcJqgLM8dLingxzo1fj2sMQ-ZM_skxv6yc5FcM5B126fBW3Z9Lc',
  ),
  ProjectUtils(
    image: 'assets/project_image/sociallinkproject.png',
    title: 'Social Link Project',
    subtitle:
        'This application is made with Flutter.It can be contacted on all social media. It uses several packages.  ',
    source: 'https://github.com/alazad214/Social-Link',
    preview:
        'https://alazadsociallink214.netlify.app/?fbclid=IwAR3bOh0pn1ifEnqMbabBxd6UnNgX7YCWaOE7AGsUqpFedCZ1WwnUSh8v0cA',
  ),
  ProjectUtils(
    image: 'assets/project_image/uidesing.png',
    title: 'Flutter Responsive UI ',
    subtitle: 'This application is made with Flutter.This app is designed responsively.',
    source: 'https://github.com/alazad214/ui_project1',
    preview: 'https://drive.google.com/file/d/114KbukknA1NmB0Gv8MBkDlRh_rT8-8GG/view?usp=sharing',
  ),

  ProjectUtils(
    image: 'assets/project_image/newsapp.jpg',
    title: 'News App',
    subtitle: 'This is a News App ',
    source: 'https://github.com/alazad214/NewsApp',
    preview: '',
  ),
];
