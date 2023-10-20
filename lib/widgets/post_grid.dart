import 'package:flutter/material.dart';
import 'package:tugasmobile/model/model.dart';
import 'package:tugasmobile/screens/post_screen.dart';
import 'package:tugasmobile/widgets/home_app_bar2.dart';

class PostGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar2(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return WidgetGrid(model: listCategory2[index]);
            },
          ),
        ),
      ),
    );
  }
}

class WidgetGrid extends StatelessWidget {
  const WidgetGrid({
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
          ),
        );
      },
      child: Container(
        width: 160,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(model.url),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Column(
          children: [
            // Container(
            //   alignment: Alignment.topRight,
            //   child: Icon(
            //     Icons.bookmark_border_outlined,
            //     color: Colors.white,
            //     size: 30,
            //   ),
            // ),
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
