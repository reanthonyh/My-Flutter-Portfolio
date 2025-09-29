import 'package:flutter/widgets.dart';

import '../widgets/slider.dart';

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
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-photos&psig=AOvVaw11vt114WTwy7-nXZ_zpWou&ust=1759270222422000&source=images&cd=vfe&opi=89978449&ved=2ahUKEwj6hNK2_v6PAxUojGEGHbPaNCcQjRx6BAgAEBo',
              'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?cs=srgb&dl=pexels-simon73-1323550.jpg&fm=jpg',
              'https://thumbs.dreamstime.com/b/panoramic-view-high-lands-mountains-utah-under-twilight-mt-nebo-overlook-autumn-time-381458692.jpg',
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dreamstime.com%2Fphotos-images%2Fwarm-su.html%3Fpg%3D3&psig=AOvVaw1T5ujxkjjRPACdI3PGVmjq&ust=1759270223283000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCNi6_8v-_o8DFQAAAAAdAAAAABAO',
            ],
          );
        },
      ),
    );
  }
}
