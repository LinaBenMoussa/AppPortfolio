class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'API Predict Recruitment Process',
    'Model IA pour le processus de recrutement.',
    'assets/images/api.png',
    'https://github.com/LinaBenMoussa/ApiPredictProcessus',
  ),
  Project(
    'App Hotels Reservation',
    'Web Application to reserve hotels',
    'assets/images/laravel.png',
    'https://github.com/LinaBenMoussa/Asp.net-core-mvc-project',
  ),
  Project(
      'App web for food delivery',
      'App web for food delivery and reservation with laravel and vue.',
      'assets/images/laravel.png',
      'https://github.com/LinaBenMoussa/Laravel_VueJs_Project-FastDelivery'),
  Project(
      'App web for hotels reservation',
      'app web for hotels reservation with Angular and Asp.net.',
      'assets/images/angular.png',
      'https://github.com/LinaBenMoussa/Angular-Project')
];
