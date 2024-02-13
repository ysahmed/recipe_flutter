import 'package:flutter/material.dart';
import 'package:recipe/utils/constants.dart';
import 'package:recipe/widgets/category_list_item.dart';
import 'package:recipe/widgets/new_item_list_item.dart';
import 'package:recipe/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 6, vsync: this);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: buttonColor,
          foregroundColor: Colors.white,
          shape: const CircleBorder(),
          elevation: 0,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 2,
          clipBehavior: Clip.antiAlias,
          notchMargin: 8,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _navBarButton(() {}, Icons.home),
              _navBarButton(() {}, Icons.bookmark_outline),
              _navBarButton(() {}, Icons.notifications_none_outlined),
              _navBarButton(() {}, Icons.person_outline),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Detail
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: _userDetail(),
              ),

              // search Widget
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: _searchWidget(),
              ),

              // Tab Bar
              Container(
                padding: EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: 31,
                  child: TabBar(
                    controller: tabController,
                    isScrollable: true,
                    splashFactory: NoSplash.splashFactory,
                    labelPadding: const EdgeInsets.all(0),
                    // padding: const EdgeInsets.only(left: 0),
                    tabAlignment: TabAlignment.start,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: buttonColor,
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    unselectedLabelColor: buttonColor,
                    dividerHeight: 0,
                    tabs: [
                      _tab('All'),
                      _tab('Indian'),
                      _tab('Italian'),
                      _tab('Chinese'),
                      _tab('Asian'),
                      _tab('American'),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 231,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return CategoryListItem(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/detailPage'),
                            );
                          },
                        ),
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return CategoryListItem(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/detailPage'),
                            );
                          },
                        ),
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return CategoryListItem(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/detailPage'),
                            );
                          },
                        ),
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return CategoryListItem(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/detailPage'),
                            );
                          },
                        ),
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return CategoryListItem(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/detailPage'),
                            );
                          },
                        ),
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return CategoryListItem(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/detailPage'),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  'New Recipes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    height: 139,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return NewItemListItem(
                          onTap: () =>
                              Navigator.pushNamed(context, '/detailPage'),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _userDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Wilson',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'What are you cooking today?',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
              ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 40,
            width: 40,
            color: Color.fromRGBO(255, 206, 128, 1),
            child: Image.asset('assets/images/11.jpg'),
          ),
        )
      ],
    );
  }

  Widget _searchWidget() {
    return SearchWidget();
  }

  Widget _tab(String text) {
    return Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: Text(text),
      ),
    );
  }

  Widget _navBarButton(VoidCallback onPressed, IconData icon) => IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
      );
}
