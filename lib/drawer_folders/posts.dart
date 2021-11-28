class Post {
  final String userId;
  final int id;
  final String title;
  final String body;
  final String email;
  Post(
      {required this.userId,
        required this.id,
        required this.title,
        required this.body,
        required this.email,
      });
  factory Post.fromJson(Map json) {
    return Post(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body'],
        email: json['email']
    );
  }
  Map toMap() {
    var map = new Map();
    map["userId"] = userId;
    map["title"] = title;
    map["body"] = body;
    map["email"] = email;
    return map;
  }
}