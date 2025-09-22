import 'package:flutter/material.dart';
import 'package:flutter_radio_app/constants/colors.dart';
import 'package:flutter_radio_app/models/radio.dart';

class CustomRadioListTile extends StatelessWidget {
  final RadioModel radio;
  final bool isPlaying;
  final Function() onTap;

  const CustomRadioListTile({
    super.key,
    required this.radio,
    required this.isPlaying,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap, //make content take max possible horizontal space
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
          radio.image,
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        ),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            radio.time,
            style: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
              color: isPlaying ? CustomColors.primary : null,
            ),
          ),
          const SizedBox(width: 26),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(radio.title),
                Text(
                  radio.subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
      trailing: Image.asset('assets/more.png'),
    );
  }
}
