import 'package:flutter/material.dart';
import 'package:tailor_app/configurations/app_colors.dart';
import 'package:tailor_app/navigation/route_names.dart';

import 'widgets/options_tile.dart';

class ProfileSettingsViewBody extends StatelessWidget {
  const ProfileSettingsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).splashColor),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User name',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Edit Profile',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.kPrimaryColor),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            OptionsTile(
              title: 'My Profile',
              icon: Icons.person_outline,
              onTap: () {},
            ),
            OptionsTile(
              title: 'My Orders',
              icon: Icons.shopping_bag_outlined,
              onTap: () {},
            ),
            OptionsTile(
              title: 'My Shop',
              icon: Icons.store_mall_directory_outlined,
              onTap: () {
                Navigator.pushNamed(context, RouteNames.myShopViewRoute);
              },
            ),
            OptionsTile(
              title: 'Push Notification',
              icon: Icons.notifications_none,
              addSwitchButton: true,
              onTap: () {},
            ),
            OptionsTile(
              title: 'Help & Support',
              icon: Icons.support_agent_outlined,
              onTap: () {},
            ),
            OptionsTile(
              title: 'Plans',
              icon: Icons.discount_outlined,
              onTap: () {
                Navigator.pushNamed(context, RouteNames.plansViewRoute);
              },
            ),
            OptionsTile(
              title: 'Skills',
              icon: Icons.work_outline,
              onTap: () {
                Navigator.pushNamed(context, RouteNames.skillsViewRoute);
              },
            ),
            OptionsTile(
              title: 'Logout',
              icon: Icons.logout,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
