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
    image: 'assets/project_image/newsapp.png',
    title: 'News App',
    subtitle:
        'This news application is developed by Flutter. GetX package, RestAPI, ScreenUtil package etc are all used in it',
    source: 'https://github.com/alazad214/NewsApp',
    preview:
        'https://drive.google.com/drive/folders/10yUDVFhWAhNs3gOh3aX4AEK9zBTQLxpq?usp=sharing',
  ),
  ProjectUtils(
    image: 'assets/project_image/whatsapp.png',
    title: 'WhatsApp Clone',
    subtitle:
        "This is WhatsApp Clone project created by Flutter. This is a frontend project",
    source: 'https://github.com/alazad214/whatsapp-clone-',
    preview:
        'https://drive.google.com/drive/folders/11L-_xL8niPsIuusDe5LCthJHAS2AkIMN',
  ),
  ProjectUtils(
    image: 'assets/project_image/ecommerceapp.png',
    title: 'E-commerce App',
    subtitle:
        'GetX State Management, Firebase authentication, firebase storage, firebase firestore, Bkash payment gateway etc are used in this e-commerce project.',
    source: 'https://github.com/alazad214/ecommerce2',
    preview:
        'https://drive.google.com/drive/folders/10kFSeU3yPmQ2jeKFC9VFEXO4lwEIrD4Q?usp=sharing',
  ),
  ProjectUtils(
    image: 'assets/project_image/blogrider_.png',
    title: 'Blog Rider',
    subtitle:
        'This blog rider application is made responsive. It is built for mobile and web platforms.',
    source: 'https://github.com/alazad214/responsive-blog-application',
    preview: 'https://blogrider.netlify.app/#/minified:G3',
  ),
];
