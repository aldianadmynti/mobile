import 'package:flutter/material.dart';
import 'package:tugasmobile/model/model.dart';
import 'package:tugasmobile/model/model_category.dart';
import 'package:tugasmobile/screens/post_screen.dart';
import 'package:tugasmobile/widgets/home_app_bar.dart';
import 'package:tugasmobile/widgets/home_buttom_bar.dart';
import 'package:tugasmobile/widgets/list_kota.dart';

class HomePage extends StatelessWidget {
  var category = [
    'Best Place',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurant'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: listKota.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return WidgetKota(
                              model: listKota[index],
                            );
                          }),
                    )),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox.fromSize(
                  size: Size.fromHeight(40),
                  child: ListView.builder(
                    itemCount: listCategory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListKota(
                              data: listCategory[index].data,
                            ),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 4),
                            ],
                          ),
                          child: Text(
                            listCategory[index].nama,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return WidgetKebawah(
                      model: listKota[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}

class WidgetKebawah extends StatelessWidget {
  const WidgetKebawah({
    super.key,
    required this.model,
  });
  final Model model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostScreen(model: model),
                  ));
            },
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(model.url),
                  fit: BoxFit.cover,
                  opacity: 0.8,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.more_vert, size: 30),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),
              Text(
                "4.5",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WidgetKota extends StatelessWidget {
  const WidgetKota({
    super.key,
    required this.model,
  });

  final Model model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostScreen(model: model),
            ));
      },
      child: Container(
        width: 160,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(model.url),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark_border_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                model.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
