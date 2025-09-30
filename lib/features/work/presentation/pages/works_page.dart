import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/presentation/widgets/slider.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Slider(
            height: constraints.maxHeight * 0.7,
            width: constraints.maxWidth * 0.9,
            imageUrls: [
              'https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=1024x1024&w=0&k=20&c=z8_rWaI8x4zApNEEG9DnWlGXyDIXe-OmsAyQ5fGPVV8=',
              'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
              'https://media.istockphoto.com/id/522188889/photo/girl-colorful-and-natural-rainbow-eye-on-white-background.jpg?s=612x612&w=0&k=20&c=YFFYKiC5YYejxP2IeyyTau25bogDMriWf1dl0dW3ud8=',
              'https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7X8sseBG9LssIyDQBAmaWZrQPJix90lv3AA&s',
            ],
          );
        },
      ),
    );
  }
}
