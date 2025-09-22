import 'package:flutter/material.dart';
import 'package:flutter_radio_app/constants/colors.dart';
import 'package:flutter_radio_app/models/radio.dart';
import 'package:flutter_radio_app/views/radio_page/widgets/radio_list_tile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  List<RadioModel> radioList = [
    RadioModel(
      'https://images.unsplash.com/photo-1758098491466-3f85c9afdf60?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzNHx8fGVufDB8fHx8fA%3D%3D',
      'Morning Waves',
      'Daily Live Show',
      '7:00',
    ),
    RadioModel(
      'https://images.unsplash.com/photo-1758098491466-3f85c9afdf60?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzNHx8fGVufDB8fHx8fA%3D%3D',
      'Jazz Grooves',
      'Smooth Jazz Mix',
      '10:30',
    ),
    RadioModel(
      'https://images.unsplash.com/photo-1758098491466-3f85c9afdf60?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzNHx8fGVufDB8fHx8fA%3D%3D',
      'Chill Beats',
      'Lofi & Study Music',
      '3:00',
    ),
    RadioModel(
      'https://images.unsplash.com/photo-1758098491466-3f85c9afdf60?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzNHx8fGVufDB8fHx8fA%3D%3D',
      'Night Talk',
      'Late Night Conversations',
      '9:00',
    ),
    RadioModel(
      'https://images.unsplash.com/photo-1758098491466-3f85c9afdf60?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzNHx8fGVufDB8fHx8fA%3D%3D',
      'Retro Hits',
      '80s and 90s Throwback',
      '5:45',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/logo.png', width: 32.w),
      ),
      body: SizedBox(
        width: 100.w,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),

                  child: Image.network(
                    'https://plus.unsplash.com/premium_photo-1753982324741-839128d837ad?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8',
                    width: 50.w,
                    height: 50.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 55.w,
                child: Text(
                  "5 tips to enjoy your life better",
                  style: textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "MP3",
                style: textTheme.titleMedium?.copyWith(color: Colors.black54),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/fav.png'),
                  Image.asset('assets/l_rewind.png'),
                  Container(
                    width: 58,
                    height: 58,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.primary.withOpacity(0.2),
                          blurRadius: 8,
                          spreadRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: CustomColors.primary,
                    ),

                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  Image.asset('assets/r_rewind.png'),
                  Image.asset('assets/more.png'),
                ],
              ),
              const SizedBox(height: 26),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Available Radios", style: textTheme.titleLarge),
              ),
              SizedBox(height: 8),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => CustomRadioListTile(
                    radio: radioList[index],
                    isPlaying: false,
                    onTap: () {},
                  ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: radioList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
