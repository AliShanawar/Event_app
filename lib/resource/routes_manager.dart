import 'package:event_app/presntation/aboutme/about_me.dart';
import 'package:event_app/presntation/home/home.dart';
import 'package:event_app/presntation/homecreator/home_screen.dart';
import 'package:event_app/presntation/homeuser/home_user_screen.dart';
import 'package:event_app/presntation/homeuser/home_user_setting.dart';
import 'package:event_app/presntation/partrequest/part_request.dart';
import 'package:event_app/presntation/partydetails/edit_party.dart';
import 'package:event_app/presntation/partydetails/party_details.dart';
import 'package:event_app/presntation/partydetails/party_details_after_join.dart';
import 'package:event_app/resource/strings_manager.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String homeUserSetting = "/HomeUserSetting";
  static const String homeRoute = "/homecreator";
  static const String home = "/home";
  static const String editParty = "/editParty";
  static const String partyRequest = "/PartRequest";
  static const String about = "/about";
  static const String partyDetails = "/partyDetails";
  static const String partyDetailsAfterJoin = "/partyDetailsAfterJoin";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => Home());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case Routes.homeUserSetting:
        return MaterialPageRoute(builder: (_) => HomeUserSetting());
      case Routes.editParty:
        return MaterialPageRoute(builder: (_) => EditParty());
      case Routes.partyRequest:
        return MaterialPageRoute(builder: (_) => PartyRequest());
      case Routes.about:
        return MaterialPageRoute(builder: (_) => AboutMe());
      case Routes.partyDetails:
        return MaterialPageRoute(builder: (_) => PartyDetails());
      case Routes.partyDetailsAfterJoin:
        return MaterialPageRoute(builder: (_) => PartyDetailsAfterJoin());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text(AppStrings.noRouteFound),
            ),
          ),
        );
    }
  }
}
