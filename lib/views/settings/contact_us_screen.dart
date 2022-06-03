import 'package:flutter/material.dart';
import 'package:weze/widgets/footer_button.dart';

import '../../config/resources.dart';
import '../../config/size_config.dart';
import '../../widgets/title_app_bar.dart';

class ContactUSScreen extends StatelessWidget {
  const ContactUSScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      appBar: const TitleAppBar(
        title: 'Contact Us',
      ),
      backgroundColor: R.colors.greyScaffoldColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        R.images.contactUSImg,
                        width: defaultSize * 7.5,
                      ),
                      SizedBox(
                        height: defaultSize * 3,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultSize * 2),
                        child: Text(
                          'We are always here to help you'.toUpperCase(),
                          style: TextStyle(fontSize: defaultSize * 2.6),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: defaultSize,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultSize * 2),

                        child: Text(
                          'You have a question, comment, suggestion, or need '
                          'To customer service call us now!',
                          style: TextStyle(
                            fontSize: defaultSize * 1.2,
                            color: Colors.black.withOpacity(
                              0.5,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: defaultSize,
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Name',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: defaultSize,
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: defaultSize,
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextField(
                          keyboardType:TextInputType.number ,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Mobile Number',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: defaultSize,
                      ),
                      Container(
                        height: 120,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Message',
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),

              FooterButton(title: 'Send', radius: 5),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
