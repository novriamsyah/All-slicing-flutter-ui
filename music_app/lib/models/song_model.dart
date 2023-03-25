class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Song 1',
      description: 'Description 1',
      url: 'assets/music/1.mp3',
      coverUrl: 'assets/images/1.jpeg',
    ),
    Song(
      title: 'Song 2',
      description: 'Description 2',
      url: 'assets/music/2.mp3',
      coverUrl: 'assets/images/2.jpeg',
    ),
    Song(
      title: 'Song 3',
      description: 'Description 3',
      url: 'assets/music/3.mp3',
      coverUrl: 'assets/images/3.jpeg',
    ),
    Song(
      title: 'Song 4',
      description: 'Description 4',
      url: 'assets/music/3.mp3',
      coverUrl: 'assets/images/5.jpeg',
    ),
  ];
}
