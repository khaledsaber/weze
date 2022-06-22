import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../config/size_config.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: defaultSize * 3,
                    ),
                    const Text(
                      'Phone Verification',
                      style: TextStyle(
                        fontSize: 30, // defaultSize* 3,
                        color: Color(0xff0a1f44),
                      ),
                    ),
                    SizedBox(
                      height: defaultSize * 1.5,
                    ),
                    const Text(
                      'Enter your OTP code here',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15, //defaultSize* 1.5,
                        color: Color(0xff0a1f44),
                      ),
                    ),
                    SizedBox(
                      height: defaultSize * 3,
                    ),
                    //    PinCodeTextField(appContext: context, length: 4, onChanged: (String value) {  },)
                    Form(
                      child: PinCodeTextField(
                        textStyle: TextStyle(color: Colors.white),
                        pinTheme: PinTheme(
                          selectedColor: const Color(0xff4284f5),
                          selectedFillColor: const Color(0xff4284f5),
                          inactiveColor: Color(0xff1f2f6),
                          inactiveFillColor: Color(0xfff1f2f6),
                          activeColor: Color(0xff4284f5),
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(6),
                          fieldHeight: 60,
                          fieldWidth: 60,
                          activeFillColor: Color(0xff4284f5), //Colors.white,
                        ),
                        cursorColor: Colors.white,
                        animationDuration: Duration(milliseconds: 300),
                        enableActiveFill: true,
                        keyboardType: TextInputType.number,
                        appContext: context,
                        length: 4,
                        onChanged: (_) {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Didnt you receive any code?',
                          style: TextStyle(color: Color(0xffacb1c0)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Resend a new code.',
                            style: TextStyle(color: Color(0xff1fbec9)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  0,
                ),
              ),
              fixedSize: Size(MediaQuery.of(context).size.width, 50),
              primary: const Color(0xff3f44dc),
            ),
            onPressed: () {},
            child: Text('Verify'),
          )
        ],
      ),
    );
  }
}
