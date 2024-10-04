import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class ProfileInfoRow extends StatelessWidget {
  const ProfileInfoRow({
    super.key,
    required this.leading,
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  final String leading, title;
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Text(
              leading,
              style: AppStyles.styleRalewayBold17
                  .copyWith(fontSize: 16, color: Colors.grey),
            )),
        Expanded(
            flex: 3,
            child: Text(
              title,
              style: AppStyles.styleRalewayBold17.copyWith(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )),
        Expanded(
          child: IconButton(onPressed: onPressed, icon: Icon(icon)),
        )
      ],
    );
  }
}
