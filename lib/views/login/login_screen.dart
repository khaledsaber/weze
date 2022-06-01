import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../config/resources.dart';
import '../../config/size_config.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            R.images.loginBackground,
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.defaultSize * 15,
                ),
                Container(
                  height: SizeConfig.defaultSize * 40,
                  width: SizeConfig.defaultSize * 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //  color: Colors.red,
                  ),
                  child: Card(
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: defaultSize * 3),
                      child: Column(
                        children: [
                          SizedBox(
                            height: defaultSize * 2,
                          ),
                          Text(
                            'Welcome Back',
                            style: TextStyle(
                                color: Color(0xff1e2432),
                                fontSize: SizeConfig.defaultSize * 3,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: defaultSize,
                          ),
                          Text(
                            'Type your phone number here to login',
                            textAlign: TextAlign.center,
                          ),
                          InternationalPhoneNumberInput(
                            onInputChanged: (v) {},
                           countries: ["PS"],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}