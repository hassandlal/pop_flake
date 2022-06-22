
import 'package:flutter/material.dart';
import '../../modules/Box_Office_details_Screen/Box_Office_Screen.dart';
import '../../modules/details_page/details_Screen.dart';
import '../../modules/search_details_screen/Search_Detials_Screen.dart';

String token = '';

Widget BuildListView(model,context){
  return Container(
    height: MediaQuery.of(context).size.height * 0.3,
    child: ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            navigateTo(context, DetailsScreen(poster:model.items[index].image!,name:model.items[index].title!,rating:model.items[index].imDbRating!,about:model.items[index].fullTitle!));
          },
          child: Column(
            children: [
              FadeInImage(
                  width: MediaQuery.of(context).size.width*0.3,
                  height: MediaQuery.of(context).size.height*0.2,
                  placeholder:const AssetImage('assets/images/blank.png') , image: NetworkImage(
               model.items[index]
                    .image!,
              )),

              const   SizedBox(height: 20,width: 20,),
              Text(model.items[index].title!),
            ],
          ),
        );
      },
      itemCount: model.items.length,
      scrollDirection: Axis.horizontal,
    ),
  );
}
Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);
Widget buildListMovie(model,context){
  return InkWell(
    onTap: (){
      navigateTo(context, SearchDetailsScreen(about: model.description,name: model.title,poster: model.image,));
    },
    child: Container(
      height: MediaQuery.of(context).size.height*0.2,
      child: Row(
        children: [
          Expanded(flex: 1,child: FadeInImage(
              placeholder:const AssetImage('assets/images/blank.png') , image: NetworkImage(
            model.image!,
          )) ,),
          Expanded(flex: 3,child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Name: " + model.title,),
            Text(
              'Description : ' + model.description,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              ),
            ],
          ),)
        ],
      ),
    ),
  );
}
Widget buildTopRatedListMovie(model,context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: (){
        navigateTo(context, TopRatedBoxOfficeScreen(name:model.title ,poster:model.image ,rank:model.rank ,weeks:model.weeks ,));
      },
      child: Container(
        height: MediaQuery.of(context).size.height*0.2,
        child: Row(
          children: [
            Expanded(flex: 1,child: FadeInImage(
                placeholder:const AssetImage('assets/images/blank.png') , image: NetworkImage(
              model.image!,
            )) ,),
            Expanded(flex: 3,child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: " + model.title,),
                Text(
                  'Weeks : ' + model.weeks,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'rank : ' + model.rank,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'gross : ' + model.gross,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),)
          ],
        ),
      ),
    ),
  );
}
void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

