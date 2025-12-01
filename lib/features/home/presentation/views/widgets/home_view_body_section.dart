import 'package:fitu/features/home/presentation/views/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';

class HomeViewBodySection extends StatelessWidget {
  const HomeViewBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CustomListtile(title: 'Colories in take', subtitle: '1500'),
            SizedBox(width: MediaQuery.of(context).size.width * 0.06),
            const CustomListtile(title: 'Calories Burned', subtitle: '450'),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        const CustomListtile(
          title: 'Step Counts',
          subtitle: '5820',
          containerWidth: 330,
        ),
      ],
    );
  }
}
