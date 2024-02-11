import 'package:flutter/material.dart';
import 'package:recipe/utils/constants.dart';
import 'package:recipe/widgets/button.dart';
import 'package:recipe/widgets/ingredient_item.dart';
import 'package:recipe/widgets/procedure_item.dart';
import 'package:recipe/widgets/rating_badge.dart';

class RecipeDetailPage extends StatefulWidget {
  const RecipeDetailPage({super.key});

  @override
  State<RecipeDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              _video(),
              _spacer(height: 20),
              _userDetail(),
              _spacer(height: 10),
              SizedBox(
                height: 33,
                child: TabBar(
                  controller: tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: buttonColor,
                  ),
                  indicatorColor: Colors.white,
                  labelColor: Colors.white,
                  unselectedLabelColor: buttonColor,
                  dividerHeight: 0,
                  tabs: [
                    Tab(
                      child: Container(
                        width: 150,
                        alignment: Alignment.center,
                        child: Text(
                          'Ingredients',
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 150,
                        alignment: Alignment.center,
                        child: Text('Procedure'),
                      ),
                    ),
                  ],
                ),
              ),
              _spacer(height: 30),
              _itemCount(1, 10),
              _spacer(),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ListView(
                      children: [
                        IngredientItem(
                            name: 'Oil', amount: '20 ml', imageName: 'oil.jpg'),
                        IngredientItem(
                            name: 'Oil', amount: '20 ml', imageName: 'oil.jpg'),
                        IngredientItem(
                            name: 'Oil', amount: '20 ml', imageName: 'oil.jpg'),
                        IngredientItem(
                            name: 'Oil', amount: '20 ml', imageName: 'oil.jpg'),
                      ],
                    ),
                    ListView(
                      children: [
                        ProcedureItem(step: 1),
                        ProcedureItem(step: 2),
                        ProcedureItem(step: 3),
                        ProcedureItem(step: 4),
                        ProcedureItem(step: 5),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _spacer({double height = 10}) {
    return SizedBox(
      height: height,
    );
  }

  Widget _itemCount(int serveCount, int itemCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.coffee_maker_outlined,
              color: Colors.black54,
            ),
            Text(
              '$serveCount serve',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
        Text(
          '$itemCount Items',
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  Widget _video() {
    return Column(
      children: [
        // video portion
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              SizedBox(
                height: 150,
                width: double.maxFinite,
                child: Container(
                  decoration: BoxDecoration(),
                  child: Image.asset(
                    'assets/images/splash_bg.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),

              Container(
                height: 150,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black87,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black87
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
              ),

              // rating
              Container(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  child: RatingBadge('4.1'),
                ),
              ),

              // duration + favorite icon
              Positioned(
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.timer_outlined,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 10),
                        child: Text(
                          '20 min',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.bookmark_border,
                              color: buttonColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Some dish',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '(13k Review)',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        )
      ],
    );
  }

  Widget _userDetail() {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // circular Image
              ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/images/11.jpg'),
              ),

              // name & location
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Laura Wilson',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.place),
                        Text('Lagos, Nigeria'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          //follow button
          Button(onPressed: () {}, width: 85, height: 37, text: 'Follow'),
        ],
      ),
    );
  }

  Widget _tabBar(TabController tabController) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: buttonColor,
          ),
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              child: Text('Ingredients'),
            ),
            Tab(
              child: Text('Procedure'),
            ),
          ],
        ),
        _itemCount(1, 10),
      ],
    );
  }

  Widget _tabBarView(TabController tabController) {
    return TabBarView(children: [
      Placeholder(),
      Placeholder(),
    ]);
  }
}
