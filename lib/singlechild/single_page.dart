import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework_37_uzum_market/model/model.dart';
import 'package:homework_37_uzum_market/utils/styles.dart';

import '../gidview/gidview.dart';
enum MenuOptions { gallery, list, tile }

class SingleChild extends StatefulWidget {
  const SingleChild({super.key});

  @override
  State<SingleChild> createState() => _SingleChildState();
}

class _SingleChildState extends State<SingleChild> {
  CategoriesManager categoriesManager = CategoriesManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "мы нашли более 1 000 объявлений",
          style: AppTextStyles.HeadLineblack,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sync_sharp,
            ),
          ),
          PopupMenuButton<MenuOptions>(
            icon: const Icon(Icons.more_vert),
            onSelected: (MenuOptions result) {
              if (result == MenuOptions.gallery) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const SingleChild();
                    },
                  ),
                );
              } else if (result == MenuOptions.list) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return ListView();
                    },
                  ),
                );
              } else if (result == MenuOptions.tile) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return MyGridView();
                    },
                  ),
                );
              }
            },
            itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<MenuOptions>>[
              const PopupMenuItem<MenuOptions>(
                value: MenuOptions.gallery,
                child: ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Галерея'),
                ),
              ),
              const PopupMenuItem<MenuOptions>(
                value: MenuOptions.list,
                child: ListTile(
                  leading: Icon(Icons.list),
                  title: Text('Список'),
                ),
              ),
              const PopupMenuItem<MenuOptions>(
                value: MenuOptions.tile,
                child: ListTile(
                  leading: Icon(Icons.grid_on),
                  title: Text('Плитка'),
                ),
              ),
            ],
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < categoriesManager.categories.length; i++)
              Card(
                clipBehavior: Clip.hardEdge,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: Image.network(
                              categoriesManager.categories[i].categoryImage),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                              height: 40,
                              width: 55,
                              color: Colors.greenAccent,
                              child: const Text(
                                "топ",
                                style: AppTextStyles.HeadLineblack,
                              )),
                        ),
                      ],
                    ),
                    10.height(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            categoriesManager.categories[i].categoryName,
                            style: AppTextStyles.Paragraphblack,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        "Hовый",
                        style: AppTextStyles.Paragraphblack,
                      ),
                    ),
                    Text(
                      categoriesManager.categories[i].categoryPrice,
                      style: AppTextStyles.HeadLineblack,
                    ),
                    Text(
                      categoriesManager.categories[i].categoryAdreess,
                      style: AppTextStyles.Paragraphblack,
                    ),
                  ],
                ),
              ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Colors.black38,
        selectedFontSize: 20,
        mouseCursor: MouseCursor.uncontrolled,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 25,color: Colors.grey,),
            label: "главная",
            activeIcon: Icon(CupertinoIcons.home,color: Colors.black,size: 25,),
            tooltip: "главная",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Colors.black,size: 25,),
            label: "избранное",
            activeIcon: Icon(Icons.favorite,color: Colors.black,size: 25,),
            tooltip: "избранное",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline,color: Colors.black,size: 25,),
            label: "создать",
            activeIcon: Icon(CupertinoIcons.add_circled_solid,color: Colors.black,size: 25,),
             tooltip: "создать",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat,color: Colors.black,size: 25,),
            label: "сообщение",
            activeIcon: Icon(CupertinoIcons.chat_bubble,color: Colors.black,size: 25,),
            tooltip: "сообщение",
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled,color: Colors.black,size: 25,),
            label: "профиль",
            activeIcon: Icon(CupertinoIcons.profile_circled,color: Colors.black,size: 25,),
            tooltip: "профиль",
          ),

        ],

      ),

    );
  }
}
