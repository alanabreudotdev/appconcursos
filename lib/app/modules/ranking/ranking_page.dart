import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'ranking_controller.dart';

class RankingPage extends StatefulWidget {
  final String title;
  const RankingPage({Key key, this.title = "Ranking"}) : super(key: key);

  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends ModularState<RankingPage, RankingController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      hasMenu: false,
      isCenterTitle: true,
      iconActionColor: colorDefault,
      title: 'Ranking',
      widgets: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 1.0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _badgeRanking(
                        name: 'Alan Abreu',
                        image: 'assets/images/foto_profile.jpg',
                         circleAvatarTop: 15,
                        rankPosition: '2',
                        rankNumber: '1252',
                        radiusavatar: 30,
                         fontSizeRankNumber: 13,
                        badgeColor: Colors.teal[200]
                      ),
                      _badgeRanking(
                        name: 'Alan Abreu',
                        image: 'assets/images/foto_profile.jpg',
                         circleAvatarTop: 0,
                        rankPosition: '1',
                        rankNumber: '11520',
                        radiusavatar: 40,
                         fontSizeRankNumber: 13,
                        badgeColor: Colors.green[800]
                      ),
                    
                      _badgeRanking(
                        name: 'Alan Abreu',
                        image: 'assets/images/foto_profile.jpg',
                        circleAvatarTop: 15,
                        rankPosition: '3',
                        rankNumber: '1252',
                        radiusavatar: 30,
                        fontSizeRankNumber: 13,
                        badgeColor: Colors.pink
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 5, left: 15, right: 20),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              maxRadius: 25,
                              backgroundImage:
                                  AssetImage('assets/images/foto_profile.jpg'),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Text(
                                'Alan Abreu dos Santos ',
                                style: TextStyle(fontWeight: FontWeight.w400),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.bubble_chart),
                                Text(
                                  '3562 ',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Text(
                              '#$index ',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
             Container(
               decoration: BoxDecoration(
                 color: Colors.blue,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                  offset: Offset(1.0, 10.0),
                  blurRadius: 15.0,
                    )
                  ]
               ),
               height: 65,
               width: MediaQuery.of(context).size.width,
              child: Card(
                
                color: Colors.blue,
                child: Container(
                        margin: EdgeInsets.only(bottom:5, top: 5, left: 15, right: 20),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              maxRadius: 25,
                              backgroundImage:
                                  AssetImage('assets/images/foto_profile.jpg'),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Text(
                                'Você ',
                                style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.bubble_chart, color: Colors.white),
                                Text(
                                  '3562 ',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Text(
                              '#452 ',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      )
              ),
            )
          ],
        ),
      ),
    );
  }

  _badgeRanking(
      {String image,
      String name,
     
      String rankNumber,
      String rankPosition,
      double fontSizeRankNumber,
      Color badgeColor,
      double circleAvatarTop,
      double radiusavatar}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: 160,
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            top: circleAvatarTop,
            child: CircleAvatar(
              maxRadius: radiusavatar,
              backgroundImage: AssetImage(image),
            ),
          ),
          Positioned(
            top: 63,
            child: CircleAvatar(
              maxRadius: 15,
              backgroundColor: badgeColor,
              child: Text(rankPosition),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.25,
              child: Text(
                name,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          
          Positioned(
              bottom: 7,
              child: Text(
                    rankNumber,
                    style: TextStyle(fontSize: fontSizeRankNumber, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),),
        ],
      ),
    );
  }
}
