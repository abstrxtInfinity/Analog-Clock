import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watch/components/customIcons/my_flutter_app_icons.dart';
import 'package:watch/components/body.dart';
import 'package:watch/models/my_theme_provider.dart';
import 'package:watch/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Consumer<MyThemeModel>(builder: (context, theme, _)=> IconButton(
            icon: Icon(theme.isLightTheme? MyFlutterApp.moon: MyFlutterApp.sun),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              theme.changeTheme();
            },
          ),)
        ],
        // leading: IconButton(
        //   icon: Icon(MyFlutterApp.settings),
        //   onPressed: () {},
        //   color: Theme.of(context).iconTheme.color,
        // ),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.symmetric(
        //       horizontal: getProportionateScreenWidth(10),
        //     ),
        //     child: InkWell(
        //       onTap: () {},
        //       child: Container(
        //         width: getProportionateScreenWidth(32),
        //         decoration: BoxDecoration(
        //             color: Theme.of(context).primaryColor,
        //             shape: BoxShape.circle),
        //         child: Icon(
        //           Icons.add,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   )
        // ],
      ),
      body: Body(),
    );
  }
}
