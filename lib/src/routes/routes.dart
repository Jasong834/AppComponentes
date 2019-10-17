import 'package:flutter/material.dart';

import 'package:componentes/src/pages/listview_page.dart';

import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/animated_container.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){


  return <String, WidgetBuilder>{
    '/'      : (BuildContext context)=>HomePage(),
    'avatar' : (BuildContext context)=>AvatarPage(),
    'alert'  : (BuildContext context)=>AlertPage(),
    'card'   : (BuildContext context)=>CardPage(),
    'animatedContainer' : (BuildContext context)=>AnimatedContainerPage(),
    'inputs' : (BuildContext context)=>InputPage(),
    'slider' : (BuildContext context)=>SliderPage(),
    'lists'  : (BuildContext context)=>ListViewPage(),

  };
}