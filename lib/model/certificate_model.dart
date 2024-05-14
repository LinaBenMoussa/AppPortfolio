class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Angular',
    organization: 'Coursera',
    date: '02 March, 2024',
    skills: 'Angular . Angular Material',
    credential: 'https://www.sololearn.com/certificates/CC-EBCJ7UOU',
  ),
  CertificateModel(
    name: 'ASP.NET Core Foundation',
    organization: 'Coursera',
    date: 'Feb 25, 2024',
    skills: 'C# . .NET',
    credential: 'https://coursera.org/share/c6d0db00ea6760d1525460c9853d3b47',
  ),
  CertificateModel(
    name: 'Scrum Fundamentals Certified',
    organization: 'Udemy',
    date: 'November 2023',
    skills: 'Scrum',
    credential: 'https://coursera.org/share/c6d0db00ea6760d1525460c9853d3b47',
  ),
  CertificateModel(
    name: 'CCNA Routing and Switching 1',
    organization: 'Cisco',
    date: 'Juin 2023',
    skills: 'CCNA Routing and Switching',
    credential: 'https://coursera.org/share/c6d0db00ea6760d1525460c9853d3b47',
  )
];
