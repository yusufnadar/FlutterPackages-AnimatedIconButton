import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';

class AnimatedIconButtonPage extends StatefulWidget {
  const AnimatedIconButtonPage({Key? key}) : super(key: key);

  @override
  _AnimatedIconButtonPageState createState() => _AnimatedIconButtonPageState();
}

class _AnimatedIconButtonPageState extends State<AnimatedIconButtonPage> with SingleTickerProviderStateMixin{
  var animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      reverseDuration: Duration(milliseconds: 100),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Icon Button'),),
      body: Center(
        child: AnimatedIconButton(
          animationController: animationController,
          onPressed: () => print('all icons pressed'),
          icons: [
            AnimatedIconItem(
              icon: Icon(Icons.map,color: Colors.black,size: 50,),
              //onPressed: () => print('add pressed'),
            ),
            AnimatedIconItem(
              icon: Icon(Icons.pause,color: Colors.black,size: 50,),
            ),
          ],
        ),
      ),
    );
  }
}
