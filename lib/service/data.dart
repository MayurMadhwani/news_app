import 'package:news_app/models/categorymodel.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> category = List<CategoryModel>();
  CategoryModel categoryModel = CategoryModel();

  //1
  CategoryModel().categoryName = "Business";
  CategoryModel().imageUrl = "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80";
  category.add(categoryModel);

  //2
  categoryModel = CategoryModel();
  CategoryModel().categoryName = "Entertainment";
  CategoryModel().imageUrl = "https://surprisingstars.com/wp-content/uploads/2020/10/epic2-2.jpg";
  category.add(categoryModel);

  //3
  categoryModel = CategoryModel();
  CategoryModel().categoryName = "General";
  CategoryModel().imageUrl = "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);

  //4
  categoryModel = CategoryModel();
  CategoryModel().categoryName = "Health";
  CategoryModel().imageUrl = "https://images.unsplash.com/photo-1542736667-069246bdbc6d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1051&q=80";
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  CategoryModel().categoryName = "Science";
  CategoryModel().imageUrl = "https://images.unsplash.com/photo-1507413245164-6160d8298b31?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  //6
  categoryModel = CategoryModel();
  CategoryModel().categoryName = "Sports";
  CategoryModel().imageUrl = "https://sportstar.thehindu.com/cricket/article30637793.ece/ALTERNATES/LANDSCAPE_1200/India-vs-NZ-";
  category.add(categoryModel);

  //7
  categoryModel = CategoryModel();
  CategoryModel().categoryName = "General";
  CategoryModel().imageUrl = "https://images.unsplash.com/photo-1517077304055-6e89abbf09b0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  return category;
}

//<CategoryModel>[];
//new List<CategoryModel>();