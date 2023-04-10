import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        child: Center(
          child: Row(
            // padding: EdgeInsets.only(left: 30),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InteractiveCard(
                title: cards[0].title,
                description: cards[0].description,
                image: cards[0].image,
              ),InteractiveCard(
                title: cards[1].title,
                description: cards[1].description,
                image: cards[0].image,
              ),InteractiveCard(
                title: cards[0].title,
                description: cards[0].description,
                image: cards[0].image,
              ),InteractiveCard(
                title: cards[1].title,
                description: cards[1].description,
                image: cards[0].image,
              ),
              InteractiveCard(
                title: cards[0].title,
                description: cards[0].description,
                image: cards[0].image,
              ),
              InteractiveCard(
                title: cards[1].title,
                description: cards[1].description,
                image: cards[0].image,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card {
  String? title;
  String? description;
  String? image;

  Card({
    this.title,
    this.description,
    this.image
  });
}

List<Card> cards = [
  Card(title: "Desert Safari",description: "Come with us on this beatiful tour",image: "https://www.isango.com/theguidebook/wp-content/uploads/2021/10/dubai-3.1.jpg"),
  Card(title: "Doosri Jagah",description: "Chalo yahan bhi jaate hai",image: "image_url")
];

class InteractiveCard extends StatefulWidget {
  final String? title;
  final String? description;
  final String? image;

  const InteractiveCard({Key? key,this.title,this.description,this.image}) : super(key: key);

  @override
  State<InteractiveCard> createState() => _InteractiveCardState();
}

class _InteractiveCardState extends State<InteractiveCard> {
  double height = 300.0;
  double width = 100.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          height = 340.0;
          width = 340;
        });
      },
      onExit: (event) {
        setState(() {
          height = 300.0;
          width = 100.0;
        });
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.all(10.0),
        duration: Duration(milliseconds: 400),
        curve: Curves.easeOut,
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.image!)
            )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              colors: [Colors.transparent,Colors.transparent,Colors.deepOrangeAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              AnimatedRotation(
                turns: height == 300 ? -1/4 : 0,
                duration: Duration(milliseconds: 400),
                curve: Curves.easeOut,
                child: AnimatedPadding(
                  duration: Duration(milliseconds: 400),
                  padding: EdgeInsets.symmetric(vertical: height == 300 ? 20.0 : 0),
                  child:  GestureDetector(
                    onTap: (){

                    },
                    behavior: HitTestBehavior.translucent,
                    child: Text(
                      widget.title!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                  duration: Duration(milliseconds: 400),
                curve: Curves.easeOut,
                height: height == 300? 40 : 80,
                width: 320.0,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 100),
                  opacity: height == 300? 0 : 1,
                  child: OverflowBox(
                    minHeight: 80,
                    minWidth: 300,
                    maxHeight: 100,
                    maxWidth: 320,
                    child: Center(
                      child: Text(
                        widget.description!,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
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
}
