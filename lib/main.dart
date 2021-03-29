import 'package:flutter/material.dart';
import 'package:flutter_docs/screens/alert_dialog_page.dart';
import 'package:flutter_docs/screens/align_page.dart';
import 'package:flutter_docs/screens/animated_container_page_2.dart';
import 'package:flutter_docs/screens/animated_containers_page.dart';
import 'package:flutter_docs/screens/animated_opacity_page.dart';
import 'package:flutter_docs/screens/animated_positioned_page.dart';
import 'package:flutter_docs/screens/animated_positioned_transition_page.dart';
import 'package:flutter_docs/screens/animated_rotation_transition_page.dart';
import 'package:flutter_docs/screens/animated_size_page.dart';
import 'package:flutter_docs/screens/animated_slide_transition_page.dart';
import 'package:flutter_docs/screens/app_bar_bottom_and_drawing.dart';
import 'package:flutter_docs/screens/bottom_navigator_bar2.dart';
import 'package:flutter_docs/screens/bottom_navigatorbar.dart';
import 'package:flutter_docs/screens/bottom_sheet_page.dart';
import 'package:flutter_docs/screens/card_page.dart';
import 'package:flutter_docs/screens/checkbox_dynamic_listtile_page.dart';
import 'package:flutter_docs/screens/checkbox_listtile_page.dart';
import 'package:flutter_docs/screens/checkbox_page.dart';
import 'package:flutter_docs/screens/chip_action_page.dart';
import 'package:flutter_docs/screens/chip_input_page.dart';
import 'package:flutter_docs/screens/chip_page.dart';
import 'package:flutter_docs/screens/chip_choice_page.dart';
import 'package:flutter_docs/screens/circularprogressingindicator_page.dart';
import 'package:flutter_docs/screens/custom_scrool_view_page.dart';
import 'package:flutter_docs/screens/data_table_page.dart';
import 'package:flutter_docs/screens/date_time_picker_page.dart';
import 'package:flutter_docs/screens/drag_target.dart';
import 'package:flutter_docs/screens/draggable_scrollable_foods_page.dart';
import 'package:flutter_docs/screens/draggable_scrollable_page.dart';
import 'package:flutter_docs/screens/dropdown_button.dart';
import 'package:flutter_docs/screens/dropdown_button2_page.dart';
import 'package:flutter_docs/screens/expansion_panel_foods_page.dart';
import 'package:flutter_docs/screens/filter_chip_page.dart';
import 'package:flutter_docs/screens/flow_page.dart';
import 'package:flutter_docs/screens/futurebuilder_example_page.dart';
import 'package:flutter_docs/screens/gesture_detector_page.dart';
import 'package:flutter_docs/screens/grid_view_page.dart';
import 'package:flutter_docs/screens/gridview_page.dart';
import 'package:flutter_docs/screens/hero_home_page.dart';
import 'package:flutter_docs/screens/home_page.dart';
import 'package:flutter_docs/screens/images_page.dart';
import 'package:flutter_docs/screens/inkwell_page.dart';
import 'package:flutter_docs/screens/kelime_oyunu_solo.dart';
import 'package:flutter_docs/screens/linearprogressindicator_page.dart';
import 'package:flutter_docs/screens/list_tile_page.dart';
import 'package:flutter_docs/screens/navigator_home_page.dart';
import 'package:flutter_docs/screens/new_timer.dart';
import 'package:flutter_docs/screens/page_view_page.dart';
import 'package:flutter_docs/screens/popup_menu_button.dart';
import 'package:flutter_docs/screens/radio_button_page.dart';
import 'package:flutter_docs/screens/refresh_indicator_page.dart';
import 'package:flutter_docs/screens/rich_text_page.dart';
import 'package:flutter_docs/screens/scroll_bar_page.dart';
import 'package:flutter_docs/screens/slider_emoji_page.dart';
import 'package:flutter_docs/screens/slider_page.dart';
import 'package:flutter_docs/screens/slider_stars_page.dart';
import 'package:flutter_docs/screens/sliverappbar_page.dart';
import 'package:flutter_docs/screens/snack_bar_page.dart';
import 'package:flutter_docs/screens/stackover_test_page.dart';
import 'package:flutter_docs/screens/stepper_page.dart';
import 'package:flutter_docs/screens/switch_page.dart';
import 'package:flutter_docs/screens/table_page.dart';
import 'package:flutter_docs/screens/test_page.dart';
import 'package:flutter_docs/screens/timer_page.dart';
import 'package:flutter_docs/screens/tool_tip_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/expansion_panel_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.green, accentColor: Colors.green[600]),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //RouteTable
      routes: {
        '/': (context) => CheckBoxPage(), //Geçerli Sayfa
        '/secondRoute': (context) => ImagesPages(),
      },
      //Route Listimizde olmayan bir route geldiyse hata döndür.
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('Birşeyler ters gitti'),
          ),
        ),
      ),

      //Uygulama Dili = Cihaz Dili Türkçe Şuan
      supportedLocales: [Locale("en"), Locale("tr")],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
