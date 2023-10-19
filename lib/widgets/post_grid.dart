import 'package:flutter/material.dart';
import 'package:tugas/screens/post_screen.dart';
import 'package:tugas/widgets/home_app_bar2.dart';

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
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 160,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("images/holtikultura${index + 1}.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7),
                        BlendMode.dstATop,
                      ),
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
                          "City Name",
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
            },
          ),
        ),
      ),
    );
  }
}
