import 'package:flutter/material.dart';

class SedesHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SliverPersistentHeader( 
        pinned: true,
        floating: false,
        delegate: Delegate() ,

    );

  }
}

class Delegate extends SliverPersistentHeaderDelegate
{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    
    return Container (
      //color: Color.fromRGBO(255, 236, 0, 1.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 236, 0, 1.0),
        image: DecorationImage(
          image: new AssetImage(
            'assets/images/sedi.png' //imagen sedes
          ),
          fit: BoxFit.contain,
        )
      ),
    );
  }

  @override
  double get maxExtent => 250;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
  
}