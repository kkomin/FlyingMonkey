import 'dart:io';
import 'package:flutter/material.dart';

class ProfileSevenPage extends StatelessWidget {
  const ProfileSevenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, .9),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: 400,
                      color: Color(0xFFFAE9D2) //Colors.deepOrange,
                      ),
                  Column(
                    children: <Widget>[
                      // Container(
                      //     height: 90,
                      //     margin: const EdgeInsets.only(top: 60),
                      //     child: const CircleAvatar(
                      //       radius: 50,
                      //       backgroundColor: Colors.white,
                      //       // child: Image.network("rocket"),
                      //     )),
                      SizedBox(
                        height: 80,
                      ),
                      Image.network(
                        "https://lh3.googleusercontent.com/fife/AKsag4OmyA8ptlu1_ThUkrwffR5ZDXRueRcamMAGsvjVwIFty2UWipMKRlQWzAGbmXkw2otmvMu_RtaSX6ywtFq7a2AoPz5l2UO7yGWW8dPr_xmo_dgWTKBssjkiIGnavdixZw7rzLMKZyzRoRfWBsEy7ohnxPrmTvWw-ocL_-Gw8KM9P8U8iU21cp-grhrJTxNMGn2zpAIrZ2thlPwDbsilxzXA375HAfcfYz01zJvWn5IP51RyW4dtnqG77DMkwAwWL1chYcmQNrXywH8_o38DYMYWyA4z9AxBdBErPENaoEnRkyGPf9KUvSpi1_4l7aCwaDMWakKVoxEco_mmkZhTPRWZaZyTVSEfpcOdn3koViiFeXRt9mHeakIBGAd90xPLj5B3uGEHcVA4ywSMhxF2Zh-wtD1_sMQtkQXPbcmc5Tab_cM5FGixxxlxeCtjKdefenHaN91bWGVkByfsH4GNtp3HdUQ7-M6Eu_kND5E2t8VeXhKZjqzyYEKEHK_DKDIhw7sGKN70MImbBtLFpJd0xmCkd8QUoLKOjLsR136PpzpnyCfUiJFWZ0o3kcBySETyZbaSQj6Knc32raiWLCZ6v6fg3ZlkEm8nVE7T3qXA4-p8Hwzux3n1y_xJSsEJ3PplWL-OcZHe-bVbe5KPaLrOgn_Q1VxqB2VaT-BjWFzP_EXdkK4ChgJ4gw4mKElTabekEP6Kr2sCPDgVU1juw-dh-JAMf_huAw3a9MztR3hpl2-nLxzc8aPrNw4Ad9WxsZJRMPva6k06YxMbKdiLk7-axuI2xVkC0cYWx_lh3Cyss9ojcA-wizfvH51IQsxAPqWLmmbjNJDCjy43jQnKd-2ezM_M2vorHRnq4hkWbxYigD0QCYX-I3z9U8KP_zFGXTy3WJmt7C9mo2AF56TLdU_pTNWByA5ydGSKq9bYu_p4DwPVnMJs1cyYhcTZG_Gt69f8xi2C8w5G8gKTdGx9zyfqFLndJarxWA1oO8yp33cDDQZLq4goGt88uJFstww-oqulrC55HpKN2gwSdIydedSg1nNzgsa_sqWi9UL0Arb2Gk7WSZ9KgBi8Mv1-odS7I2pDDMbUCuavcirZgE1x21dm9CiX0nxJE-w5DyAuztF5kD3Jk8j6t77fjwL0VYDOW_xdHUlwGH7095W63CufmQvwoO8inekfhXnol-is4K-MORCOuJ3UfXb9iOXoNQK3LrFeRDxlOzekiNOmzp0snNlspONlgQ6YiGufhuMvJRekRrvTSuWxFJRj0gbofaHWsRFF0dfvHViF1r_Euv-JEnIgeREugTW73PEeHXyTzxUwUMTMvFy6Xkh3dvBtNnpLiB_IbBAXPkmwTvyE5-XbJrQvr1kQpkAKVmbmYvCZLwMPXRTDkFD0b3W5ZStuM2O56OH19h6Wz80jDhUnq48GAaGFX18UFXcQnxANZQ_TCOXxmb9mSRFcUZrbudXeaeBeydCnREihGtdahko8IYgFO9wvSxVVmnN43T0kYH_PNM2SOHTMq9UbQU8xLWux3aIGYsR9Y4i_bGlK=w1162-h629",
                        width: 150,
                        height: 150,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      const Text(
                        "Sudip Thapa",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      const Text(
                        "Kathmandu",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 66),
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding: const EdgeInsets.only(
                                          top: 15, bottom: 5),
                                      child: const Text("Photos",
                                          style: TextStyle(
                                              color: Colors.black54))),
                                  Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: const Text("5,000",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding: const EdgeInsets.only(
                                          top: 15, bottom: 5),
                                      child: const Text("Followers",
                                          style: TextStyle(
                                              color: Colors.black54))),
                                  Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: const Text("5,000",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 5),
                                      child: const Text("Followings",
                                          style: TextStyle(
                                              color: Colors.black54))),
                                  Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: const Text("5,000",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const UserInfo()
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "User Information",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Divider(
                    color: Colors.black38,
                  ),
                  Column(
                    children: const <Widget>[
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        leading: Icon(Icons.my_location),
                        title: Text("Location"),
                        subtitle: Text("Kathmandu"),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Email"),
                        subtitle: Text("sudeptech@gmail.com"),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text("Phone"),
                        subtitle: Text("99--99876-56"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("About Me"),
                        subtitle: Text(
                            "This is a about me link and you can khow about me in this section."),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
