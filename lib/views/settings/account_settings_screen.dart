import 'package:flutter/material.dart';
import 'package:weze/widgets/title_app_bar.dart';

import '../../config/resources.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: 'Account Settings'),
      backgroundColor: R.colors.greyScaffoldColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Change Photo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    R.icons.userIcon,
                    width: 65,
                  ),
                  Positioned(
                    child: Image.asset(
                      R.icons.greenCheckIcon,
                      width: 20,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Displaying Name',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Zoor100',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                          ),
                        ),

                      ],

                    ),
                    Positioned(child:

                        Image.asset(R.icons.pencil,width: 14,),

                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text('Account',style: TextStyle(fontSize: 17,),),
              SizedBox(height: 20,),

              buildRow(name: 'Change Phone Number', src: R.icons.changePhone),
              Divider(),
              buildRow(name: 'Terms & Conditions', src: R.icons.termsIcon),
              Divider(),
              buildRow(name: 'Sign Out', src: R.icons.signOut),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRow({required String name, required String src}) {
    return Row(
      children: [
        Image.asset(
          src,
          height: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 17),
        ),
        Expanded(
          child: Container(),
        ),
        Image.asset(
          R.icons.rightArrow,
          width: 8,
        )
      ],
    );
  }
  
}
