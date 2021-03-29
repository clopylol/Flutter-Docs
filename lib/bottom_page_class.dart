import 'package:flutter/material.dart';

class BottomIcon extends StatelessWidget {
  final String iconLabel;
  final IconData icon;
  final EdgeInsetsGeometry padding;

  const BottomIcon({Key key, this.iconLabel, this.icon, this.padding})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            onTap: () {},
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Text(
            iconLabel,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
