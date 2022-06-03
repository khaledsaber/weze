import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:weze/widgets/footer_button.dart';
import 'package:weze/widgets/title_app_bar.dart';

import '../../config/resources.dart';
import '../../config/size_config.dart';

class ChangePhoneNumberScreen extends StatelessWidget {
  const ChangePhoneNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: TitleAppBar(title: 'Change Phone Number'),
      backgroundColor: R.colors.greyScaffoldColor,
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: defaultSize *3.5,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: defaultSize*6),
                  child: Text(
                    ' You will recieve code pin to activate your phone',
                    style: TextStyle(fontSize: defaultSize*1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal:20),
                  height: defaultSize * 4.5,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: R.colors.buttonBlueColor)
                  ),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (v) {},
                    countries: const ["PS"],
                    inputDecoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.only(bottom: 15),
                        border: InputBorder.none,
                        hintText: 'Your phone number',
                        hintStyle:
                        TextStyle(fontSize: defaultSize * 1.2)),
                  ),
                ),

              ]),
            )),
            FooterButton(title: 'Change'),
          ],
        ),
      ),
    );
  }
}
