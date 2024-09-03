class ArticleModel{
ArticleModel({ required this.subTitle, required this.source, required this.image,required this.title,required this.description,});

 final String ? image;
 final String title;
 final String description;
 final String ? subTitle;
 final Source source;

}


class Source {
  final String id;
  final String name ;
  Source({
    required this.id,required this.name
  });
}