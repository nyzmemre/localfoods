import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants/extensions.dart';
import '../core/components/my_scaffold.dart';
import '../../models/model_recipe.dart';
import 'view_recipe_detail.dart';

class ViewHomepage extends StatelessWidget {
  const ViewHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: ListView.builder(
          itemCount: ModelRecipe.recipeList.length,
          itemBuilder: (BuildContext context, int index) {
            return buildCard(context, index);
          }),
    );
  }

  Widget buildCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ViewRecipeDetail(
          appBarText: "${ModelRecipe.recipeList[index].name}",
          image: "${ModelRecipe.recipeList[index].image}",
          detailText:  "${ModelRecipe.recipeList[index].recipeDetail}",
        )));
      },
      child: Padding(
              padding: context.normalPadding,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Padding(
                        padding: context.normalPadding,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              "${ModelRecipe.recipeList[index].image}"),
                        )),
                    Text("Yemek Adı: ${ModelRecipe.recipeList[index].name}", style: Theme.of(context).textTheme.headline6,),
                    context.fiveSizedBox,
                    Text("Bölge: ${ModelRecipe.recipeList[index].region}", style: Theme.of(context).textTheme.subtitle2,),
                    context.fiveSizedBox
                  ])),
            ),
    );
  }
}
