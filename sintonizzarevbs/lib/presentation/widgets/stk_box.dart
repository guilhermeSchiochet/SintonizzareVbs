import 'package:flutter/material.dart';
import 'package:sintonizzarevbs/presentation/utils/sontonizzarevbs_theme.dart';


class StkBox extends StatelessWidget {
  final IconData icon;
  final double? sizeIcon;
  final Color? iconColor;
  final double? sizeWidth;
  final bool activeShadow;
  final double? sizeHeight;
  final Color? primaryColor;
  final Widget? childWidget;
  final void Function()? onTap;
  final double? sizeBorderRadius;
  final bool buildWidgetIconDefault;
  
  const StkBox({
    super.key,
    this.onTap,
    this.sizeIcon,
    this.iconColor,
    this.childWidget,
    this.primaryColor,
    this.sizeWidth = 80,
    this.sizeHeight = 80,
    this.sizeBorderRadius,
    this.icon = Icons.menu,
    this.activeShadow = true,
    this.buildWidgetIconDefault = true,
  });

  @override
  Widget build(BuildContext context) => _widgetStkBox;

  Widget get _widgetStkBox {
    return InkWell(
      borderRadius: BorderRadius.circular(sizeBorderRadius ?? 12),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(sizeBorderRadius ?? 12),
          color: primaryColor ?? Sintonizzarevbs.primaryColor,
          boxShadow: activeShadow ? [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: Offset(5, 5),
            ),
            BoxShadow(
              color: Colors.grey.shade100,
              blurRadius: 15,
              offset: Offset(-5, -5),
            ),
          ] : []
        ),
        height: sizeHeight,
        width: sizeWidth,
        child: buildWidgetIconDefault && childWidget == null ? Icon(
          icon,
          size: sizeIcon ?? 30,
          color: iconColor,
        ) : childWidget,
      ),
    );
  }

}