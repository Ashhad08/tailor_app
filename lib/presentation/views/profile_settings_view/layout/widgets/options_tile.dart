import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tailor_app/configurations/app_colors.dart';

class OptionsTile extends StatefulWidget {
  const OptionsTile({
    Key? key,
    this.addSwitchButton = false,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final bool addSwitchButton;
  final IconData icon;
  final VoidCallback onTap;

  @override
  State<OptionsTile> createState() => _OptionsTileState();
}

class _OptionsTileState extends State<OptionsTile> {
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minLeadingWidth: 24,
          onTap: widget.onTap,
          leading: Icon(widget.icon),
          title:
              Text(widget.title, style: Theme.of(context).textTheme.bodyText2),
          trailing: widget.addSwitchButton
              ? CupertinoSwitch(
                  value: _isActive,
                  onChanged: (bool val) {
                    setState(() {
                      _isActive = val;
                    });
                  },
                  activeColor: AppColors.kPrimaryColor,
                )
              : null,
        ),
        Divider(
          height: 0,
          thickness: 1,
          color: Theme.of(context).dividerColor.withOpacity(0.2),
        )
      ],
    );
  }
}
