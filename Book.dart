class Book {
String title, author;
Book (this.title, this.author);

@override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          author == other.author;

  @override
  int get hashCode => title.hashCode ^ author.hashCode;
}