import 'package:flutter/material.dart';
import 'package:flutter_button/customButtons/opacity_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/screens/article_screen.dart';

class MiniBlogCard extends StatelessWidget {
  final String title;
  final String des;
  final String url;
  
  const MiniBlogCard({
    Key key,
    this.title,
    this.des,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpacityButton(
      opacityValue: .5,
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ArticleScreen(
            blogUrl: url,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.black, width: 2.5),
              top: BorderSide(color: Colors.black, width: 2.5),
              bottom: BorderSide(color: Colors.black, width: 4),
              right: BorderSide(color: Colors.black, width: 6),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  title,
                  style: GoogleFonts.turretRoad(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  des,
                  style: GoogleFonts.turretRoad(
                    color: Colors.black.withOpacity(.6),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
