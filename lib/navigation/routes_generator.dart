import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_app/presentation/views/add_new_product_view/add_new_product_view.dart';
import 'package:tailor_app/presentation/views/add_new_skill_view/add_new_skill_view.dart';
import 'package:tailor_app/presentation/views/customer_support_view/customer_support_view.dart';
import 'package:tailor_app/presentation/views/my_orders_view/my_orders_view.dart';
import 'package:tailor_app/presentation/views/my_shop_view/my_shop_view.dart';
import 'package:tailor_app/presentation/views/order_details_view/order_details_view.dart';
import 'package:tailor_app/presentation/views/plans_view/plans_view.dart';
import 'package:tailor_app/presentation/views/product_details_view/product_details_view.dart';
import 'package:tailor_app/presentation/views/profile_settings_view/profile_settings_view.dart';
import 'package:tailor_app/presentation/views/send_offer_view/send_offer_view.dart';
import 'package:tailor_app/presentation/views/skills_view/skills_view.dart';

import 'route_names.dart';

class RoutesGenerator {
  static PageRouteBuilder slideTransitionBuilder({required Widget child}) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final position = animation.drive(Tween<Offset>(
              begin: const Offset(1, 0), end: const Offset(0, 0)));

          return SlideTransition(position: position, child: child);
        });
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.sendOfferViewRoute:
        return slideTransitionBuilder(child: const SendOfferView());
      case RouteNames.myOrdersViewRoute:
        return slideTransitionBuilder(child: const MyOrdersView());
      case RouteNames.orderDetailsViewRoute:
        return slideTransitionBuilder(child: const OrderDetailsView());
      case RouteNames.customerSupportViewRoute:
        return slideTransitionBuilder(child: const CustomerSupportView());
      case RouteNames.profileSettingsViewRoute:
        return slideTransitionBuilder(child: const ProfileSettingsView());
      case RouteNames.myShopViewRoute:
        return slideTransitionBuilder(child: const MyShopView());
      case RouteNames.productDetailsViewRoute:
        return slideTransitionBuilder(child: const ProductDetailsView());
      case RouteNames.addNewProductViewRoute:
        return slideTransitionBuilder(child: const AddNewProductView());
      case RouteNames.plansViewRoute:
        return slideTransitionBuilder(child: const PlansView());
      case RouteNames.skillsViewRoute:
        return slideTransitionBuilder(child: const SkillsView());
      case RouteNames.addNewSkillViewRoute:
        return slideTransitionBuilder(child: const AddNewSkillView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                'No Routes',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                    fontSize: 25),
              ),
            ),
          ),
        );
    }
  }
}
