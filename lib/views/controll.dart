import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_signal/helper/constant.dart';
import 'package:track_signal/views/package_view.dart';
import 'package:track_signal/views/track_view.dart';
import 'package:track_signal/widgets/custom_text.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin {

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =TabController(initialIndex: 0,length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leadingWidth: 40,
        backgroundColor: Colors.white,
        leading: appBarLeading() ,
        title:  appBarTitle(),
        actions: appBarActions(),
        bottom: TabBar(
          indicatorColor: kMainColor ,
          unselectedLabelColor: Color(0xffC5C5C5),
          indicatorWeight: 4,
          labelColor: kMainColor,
          labelStyle: TextStyle(
            fontSize: 22,
            //fontFamily: "Cairo",
            fontWeight: FontWeight.bold
          ),
          tabs: <Widget>[
            Tab(
              text: "Track",
            ),
            Tab(
              text: "All Package",
            ),

          ],
          controller:_tabController ,
        ),
      ),
      body: TabBarView(children: [
        TrackView(),
        PackageView()
      ],
        controller: _tabController,
      ),

    );
  }

  Padding appBarLeading() {
    return Padding(
        padding: const EdgeInsets.only(left: 15),
        child: imageButton("assets/images/leading.png")
      );
  }

  List<Widget> appBarActions() {
    return [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: imageButton("assets/images/icon22.png"),
        ) ,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomText(
            text: "0 pts",
            fontColor: Color(0xffDABD2A),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ) ,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.settings , color: kMainColor,),
        ) ,
      ];
  }

  InkWell imageButton(String imagePath) {
     return InkWell(
       onTap:  (){},
       child: Image.asset(imagePath,
         width: 25,
         height: 25,
       ),
     ) ;
   }

  Row appBarTitle() {
    return Row(
      children: [
        CustomText(
          text:  "Track",
          fontWeight: FontWeight.bold,
          fontSize: 27,
          fontColor: Color(0xff474747),
        ),
        CustomText(
          text:  "Signal",
          fontWeight: FontWeight.bold,
          fontSize: 27,
          fontColor: kMainColor,
        )
      ],
    );
  }
}
