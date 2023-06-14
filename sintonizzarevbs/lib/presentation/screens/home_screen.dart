import 'package:flutter/material.dart';
import 'package:sintonizzarevbs/presentation/widgets/stk_box.dart';
import 'package:sintonizzarevbs/presentation/widgets/stk_show_music_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets,
    );
  }

  Widget get _widgets {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildPlayListContainer(),
            _buildStkShowMusicBox(),
            _buildaActions(),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayListContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StkBox(
          icon: Icons.arrow_back,
          onTap: () => Navigator.pop(context),
        ),
        Text(
          'P L A Y L I S T',
          style: TextStyle(
            fontSize: 17
          ),
        ),
        StkBox(
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildStkShowMusicBox() {
    return StkShowMusicBox();
  }

  Widget _buildaActions() {
    return Row(
      children: [
        Expanded(
          child: StkBox(
            icon: Icons.skip_previous,
            onTap: () {},
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: StkBox(
              icon: Icons.play_arrow,
              onTap: () {},
            ),
          ),
        ),
        Expanded(
          child: StkBox(
            icon: Icons.skip_next,
            onTap: () {},
          ),
        ),
      ],
    );
  }


}