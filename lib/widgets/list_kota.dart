import 'package:flutter/material.dart';
import 'package:tugasmobile/model/model.dart';
import 'package:tugasmobile/widgets/home_app_bar3.dart';

class ListKota extends StatelessWidget {
  final List<Model> data;

  const ListKota({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar3(),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(data[index].url),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          data[index].title,
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
                    children: <Widget>[
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
            ),
          );
        },
      ),
    );
  }
}
