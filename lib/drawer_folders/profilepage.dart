import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget profilepage(BuildContext context) {
  String img = "assets/beauty.jpeg";
  return SingleChildScrollView(
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 60),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
                height: 375,
                width: 250,
                child: Image.asset(img)
            ),
          ),
          Container(
              margin: EdgeInsets.all(2),
              height: 200,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          height: 160,
                          child: Card(
                            shadowColor: Colors.red,
                            elevation: 10,
                            shape: OutlineInputBorder(borderRadius: BorderRadius
                                .circular(10), borderSide: BorderSide(
                                color: Colors.green, width: 1)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home,
                                    size: 50,
                                  ),
                                  Divider(
                                    color: Colors.red,
                                  ),
                                  Text('Home', style: TextStyle(fontSize: 30,
                                      fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},)
                  ),
                  Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          height: 160,
                          child: Card(
                            shadowColor: Colors.red,
                            elevation: 10,
                            shape: OutlineInputBorder(borderRadius: BorderRadius
                                .circular(10), borderSide: BorderSide(
                                color: Colors.green, width: 1)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.tour,
                                    size: 50,
                                  ),
                                  Divider(
                                    color: Colors.red,
                                  ),
                                  Text('Tour', style: TextStyle(fontSize: 30,
                                      fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      )
                  ),
                ],
              )
          ),
          Center(
            child: Container(
                height: 375,
                width: 250,
                child: Image.asset(img)
            ),
          ),
          Container(
              margin: EdgeInsets.all(2),
              height: 200,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      child: Container(
                        padding: EdgeInsets.all(3),
                        height: 160,
                        child: Card(
                          shadowColor: Colors.red,
                          elevation: 10,
                          shape: OutlineInputBorder(borderRadius: BorderRadius
                              .circular(10), borderSide: BorderSide(
                              color: Colors.green, width: 1)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.hotel,
                                  size: 50,
                                ),
                                Divider(
                                  color: Colors.red,
                                ),
                                Text('Hotels', style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          height: 160,
                          child: Card(
                            shadowColor: Colors.red,
                            elevation: 10,
                            shape: OutlineInputBorder(borderRadius: BorderRadius
                                .circular(10), borderSide: BorderSide(
                                color: Colors.green, width: 1)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.contacts,
                                    size: 50,
                                  ),
                                  Divider(
                                    color: Colors.red,
                                  ),
                                  Text('Contact Us', style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      )
                  ),
                ],
              )
          ),
        ],
      ),
    ),
  );
}
//       final _tabInfo = [
//         _TabInfo(
//         GalleryLocalizations.of(context).cupertinoTabBarHomeTab,
//         CupertinoIcons.home,
//         ),
//         _TabInfo(
//         GalleryLocalizations.of(context).cupertinoTabBarChatTab,
//         CupertinoIcons.conversation_bubble,
//         ),
//         _TabInfo(
//         GalleryLocalizations.of(context).cupertinoTabBarProfileTab,
//         CupertinoIcons.profile_circled,
//         ),
//       ];
//       return DefaultTextStyle(
//         style: CupertinoTheme.of(context).textTheme.textStyle, child: CupertinoTabScaffold(
//           restorationId: 'cupertino_tab_scaffold',
//           tabBar: CupertinoTabBar(
//           items: [
//               for(final tabInfo in _tabInfo)
//                 BottomNavigationBarItem(
//                 label: tabInfo.title,
//           icon: Icon(tabInfo.icon),
//                   ),
//                 ],
//               ),
//               tabBuilder: (context, index){
//                 return CupertinoTabView(
//                   restorationScopeId: 'cupertino_tab_view_$index',
//                   builder: (context) => _CupertinoDemoTab(
//                     title: _tabInfo[index].title,
//                     icon: _tabInfo[index].icon, key: null,
//                   ),
//                   defaultTitle: _tabInfo[index].title,
//                 );
//               },
//   );
// }
// class GalleryLocalizations {
// }
// class _CupertinoDemoTab extends StatelessWidget{
//   const _CupertinoDemoTab({
//     required Key key,
//     required this.title,
//     required this.icon,
//   }) : super(key: key);
//   final String title;
//   final IconData icon;
//   @override
//   Widget build(BuildContext context){
//     return CupertinoPageScaffold(
//       navigationBar: const CupertinoNavigationBar(),
//       backgroundColor: CupertinoColors.systemBackground,
//       child: Center(
//         child: Icon(
//           icon,
//           semanticLabel: title,
//           size: 160,
//         ),
//       ),
//     );
//   }
// }
// class _TabInfo{
//   const _TabInfo(this.title, this.icon);
//   final String title;
//   final IconData icon;
// }
