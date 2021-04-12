import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/categorymodel.dart';
import 'package:news_app/service/data.dart';
import 'package:news_app/service/news.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<ArticleModel> articles = [];
  bool _loading = true;

  @override
  void initState(){
    super.initState();
    getNews();
  }

  getNews()async{
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading =false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Let's",style: TextStyle(fontSize: 25),),
            Text("News",style: TextStyle(fontSize: 25,color: Colors.lightBlueAccent),),
          ],
        ),
      ),
      body: _loading ?Center(
        child: Container(
          child: CircularProgressIndicator(),
          ),
      ) : SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              //Categories

              Container(
                // margin: EdgeInsets.symmetric(vertical: 5.0),
                height: 100.0,
                color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    //1
                    CategoryTile(
                      imageUrl: "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80",
                      categoryName: "Business",
                    ),
                    //2
                    CategoryTile(
                      imageUrl: "https://surprisingstars.com/wp-content/uploads/2020/10/epic2-2.jpg",
                      categoryName: "Entertainment",
                    ),
                    //3
                    CategoryTile(
                      imageUrl: "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                      categoryName: "General",
                    ),
                    //4
                    CategoryTile(
                      imageUrl: "https://images.unsplash.com/photo-1542736667-069246bdbc6d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1051&q=80",
                      categoryName: "Health",
                    ),
                    //5
                    CategoryTile(
                      imageUrl: "https://images.unsplash.com/photo-1507413245164-6160d8298b31?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80",
                      categoryName: "Science",
                    ),
                    //6
                    CategoryTile(
                      imageUrl: "https://sportstar.thehindu.com/cricket/article30637793.ece/ALTERNATES/LANDSCAPE_1200/India-vs-NZ-",
                      categoryName: "Sports",
                    ),
                    //7
                    CategoryTile(
                      imageUrl: "https://images.unsplash.com/photo-1517077304055-6e89abbf09b0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80",
                      categoryName: "Technology",
                    ),
                  ],
                ),
              ),

              //Blogs

              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: ListView.builder(
                      itemCount:  articles.length,
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        return BlogTile(
                            imageUrl: articles[index].urlToImage,
                            title: articles[index].title,
                            desc: articles[index].description,
                        );
                      },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {

  final imageUrl, categoryName;
  CategoryTile({this.imageUrl,this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        margin: EdgeInsets.only(right: 8,left: 8),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 120,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black26,
              ),
              child: Text(
                categoryName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class BlogTile extends StatelessWidget {

  final String imageUrl,title,desc;
  BlogTile({@required this.imageUrl,@required this.title,@required this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(imageUrl),
          Text(title),
          Text(desc),
        ],
      ),
    );
  }
}
