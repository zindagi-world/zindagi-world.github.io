import 'package:flutter/cupertino.dart';
import 'package:zindagi/widgets/sexy_tile.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SexyTile(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
                'Zindagi, a youth activist organization, created with the aim to spread awareness and educate people on socio-economic issues pertaining to parameters influencing the lifestyle and wellbeing of our society. Our main objective is to work for social development of underprivileged individuals and encourage community building. We aim to undertake various projects that will help us attain this goal through community outreach. We are working on several fundraising programs which will enable us to easily conduct these awareness drives. The projects which our organisation will undertake represent small steps in the path to creating an easier world to live in.'),
          ),
        ),
      ],
    );
  }
}
