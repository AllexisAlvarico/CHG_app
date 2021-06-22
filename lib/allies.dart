import 'package:flutter/material.dart';
import 'package:chg/units_button.dart';

class AlliesPage extends StatelessWidget {
  // american data
  final List<UnitData> americanData = [
    UnitData(
        imageLink:
            "https://lh5.googleusercontent.com/Z0IpJLN5VmUY5F8IVu4vINogh438KYhJwX8BnYkplPrX69ULsqWiiefsSEFYQYgcw9xe7PLwu-wzk1vLCDgNHRDzftjnKREl0-PBVXout1s=w1280"),
    UnitData(
        imageLink:
            "https://lh3.googleusercontent.com/nbbB7CBl3JWP6XMjkkdJmYE-WkCa07mVeTRa3eorVZXJH4Rtw7Tj5KbfASZkuYCeQuMCbMsYDPZ1IheTkrnafMSHJ2T8C1Q_q3sOzn-HooY=w1280"),
    UnitData(
        imageLink:
            "https://lh5.googleusercontent.com/XFsr4ANdpk11xEtMypxwM3_Rn47jPkg6ZVUPu4L6oFqnRtN5DbEyATIhWXi_wJNU3X_RrEYYbvVXIK-FaBSgyPHQX6JNMy50uLTDkTytJbA=w1280"),
    UnitData(
        imageLink:
            "https://lh3.googleusercontent.com/wZnBPdKU_TQxlsnvYGqk4aTq0F-JOAXuKT4x9Y9of3t6y36q0iG6ZVRVeYFQuChU6FpajoQGMhD36RzIHLMRPwXlEqlmnPsEv4KJQWK9nms=w1280"),
    UnitData(
        imageLink:
            "https://lh5.googleusercontent.com/ZDMc8B_9rGTOw8e40yrJgyP8GGUxWP6fsm9FIeTjcAGoTkO5vrT5v_PlxPJobLVEVZ3YGT7l8s4Bt0TdU2qhCB7h2nE8dO2GvRRGyfuR2tE=w1280"),
    UnitData(
        imageLink:
            "https://lh4.googleusercontent.com/9TT33_A23s34TpcXmmVTwJ162Oj806ISVHcjC95zQ_eBcC4pp63SguLbdPNAFNPicEUqe_Jfd1N96lxb4WCtZRztmx7uUEWIzPMpc7FvGf8=w1280"),
  ];

  // british data
  final List<UnitData> britishData = [
    UnitData(
        imageLink:
            "https://lh6.googleusercontent.com/3vDCh1RMYuFuSHHwHCiEjYmvfoaTFRKG8N8pOPzPGPalGTfKPeGMQgPnhML3MZLKCr-hyguYVkK9t9IrdFwimTsmtmCRypSBRluS-ykOfr0=w1280"),
    UnitData(
        imageLink:
            "https://lh4.googleusercontent.com/JTK3rXp8zqG4EChpbOvVVVYCsSUkf_g74oyZKs0NY60aRsGoBnt2pxqQP7chxUkWeYMaQc3B3mPZzIKkwnL2FKERtCyJly4VO8clfssEJbo=w1280"),
  ];

  // red army data
  final List<UnitData> redArmyData = [
    UnitData(
        imageLink:
            "https://lh6.googleusercontent.com/uNN5HiCSDlJT8IKFUlFk-fYeLLquAUmfChdepfwnOcb-EBjIMC3D4jJbTfZMhNFs6zqY0FnMfg0-HLEnHWexQvW6wRwQVyW1qudNPPCzOS0=w1280"),
    UnitData(
        imageLink:
            "https://lh6.googleusercontent.com/J0LxlcKo-Mosh6zo1OpxspNNPaNsVqni487WvQ1zfm8KgPrDSIV6QO6ozIiUjas3sHwxhTS_7Mw8mJnbeqXMKFr8WvM_0SZ3rxsA1gPBq_U=w1280"),
  ];

  AlliesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1DFDB), // cream color
      appBar: AppBar(
        title: Text("Allies"),
        backgroundColor: Color(0xFF303033), // black color
      ),
      body: SingleChildScrollView(
        // main scroller to scroll through all lists
        child: Center(
          child: Column(
            // column encapsulating lists with unit data
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return UnitsButton(unitData: americanData[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: americanData.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
