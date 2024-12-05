class Post {
  final int id;
  final String title;
  final String content;
  final List<String> tags;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.tags,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'No Title',
      content: json['content'] ?? 'No Content',
      tags: json['tags'] != null ? List<String>.from(json['tags']) : [],
    );
  }
}
