import 'package:flutter/material.dart';
import 'package:monkeyplace/secondpage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "Monkey Place",
          style: TextStyle(
              color: Color.fromARGB(255, 70, 23, 10),
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: PageView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 500,
                  height: 763,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(230, 255, 233, 192),
                        Color.fromARGB(255, 244, 223, 86)
                      ],
                    ),
                  ),
                  // Container(
                  //     width: double.infinity,
                  //     height: 450,
                  //     color: Color(0xFFFAE9D2)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "15조",
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 53, 53),
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        child: Image.network(
                          "https://lh3.googleusercontent.com/fife/AKsag4OmyA8ptlu1_ThUkrwffR5ZDXRueRcamMAGsvjVwIFty2UWipMKRlQWzAGbmXkw2otmvMu_RtaSX6ywtFq7a2AoPz5l2UO7yGWW8dPr_xmo_dgWTKBssjkiIGnavdixZw7rzLMKZyzRoRfWBsEy7ohnxPrmTvWw-ocL_-Gw8KM9P8U8iU21cp-grhrJTxNMGn2zpAIrZ2thlPwDbsilxzXA375HAfcfYz01zJvWn5IP51RyW4dtnqG77DMkwAwWL1chYcmQNrXywH8_o38DYMYWyA4z9AxBdBErPENaoEnRkyGPf9KUvSpi1_4l7aCwaDMWakKVoxEco_mmkZhTPRWZaZyTVSEfpcOdn3koViiFeXRt9mHeakIBGAd90xPLj5B3uGEHcVA4ywSMhxF2Zh-wtD1_sMQtkQXPbcmc5Tab_cM5FGixxxlxeCtjKdefenHaN91bWGVkByfsH4GNtp3HdUQ7-M6Eu_kND5E2t8VeXhKZjqzyYEKEHK_DKDIhw7sGKN70MImbBtLFpJd0xmCkd8QUoLKOjLsR136PpzpnyCfUiJFWZ0o3kcBySETyZbaSQj6Knc32raiWLCZ6v6fg3ZlkEm8nVE7T3qXA4-p8Hwzux3n1y_xJSsEJ3PplWL-OcZHe-bVbe5KPaLrOgn_Q1VxqB2VaT-BjWFzP_EXdkK4ChgJ4gw4mKElTabekEP6Kr2sCPDgVU1juw-dh-JAMf_huAw3a9MztR3hpl2-nLxzc8aPrNw4Ad9WxsZJRMPva6k06YxMbKdiLk7-axuI2xVkC0cYWx_lh3Cyss9ojcA-wizfvH51IQsxAPqWLmmbjNJDCjy43jQnKd-2ezM_M2vorHRnq4hkWbxYigD0QCYX-I3z9U8KP_zFGXTy3WJmt7C9mo2AF56TLdU_pTNWByA5ydGSKq9bYu_p4DwPVnMJs1cyYhcTZG_Gt69f8xi2C8w5G8gKTdGx9zyfqFLndJarxWA1oO8yp33cDDQZLq4goGt88uJFstww-oqulrC55HpKN2gwSdIydedSg1nNzgsa_sqWi9UL0Arb2Gk7WSZ9KgBi8Mv1-odS7I2pDDMbUCuavcirZgE1x21dm9CiX0nxJE-w5DyAuztF5kD3Jk8j6t77fjwL0VYDOW_xdHUlwGH7095W63CufmQvwoO8inekfhXnol-is4K-MORCOuJ3UfXb9iOXoNQK3LrFeRDxlOzekiNOmzp0snNlspONlgQ6YiGufhuMvJRekRrvTSuWxFJRj0gbofaHWsRFF0dfvHViF1r_Euv-JEnIgeREugTW73PEeHXyTzxUwUMTMvFy6Xkh3dvBtNnpLiB_IbBAXPkmwTvyE5-XbJrQvr1kQpkAKVmbmYvCZLwMPXRTDkFD0b3W5ZStuM2O56OH19h6Wz80jDhUnq48GAaGFX18UFXcQnxANZQ_TCOXxmb9mSRFcUZrbudXeaeBeydCnREihGtdahko8IYgFO9wvSxVVmnN43T0kYH_PNM2SOHTMq9UbQU8xLWux3aIGYsR9Y4i_bGlK=w1162-h629",
                          width: 150,
                          height: 150,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SecondPage(),
                            ),
                          );
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15),
                      ),
                      const Text(
                        "Monkey place에 오신 것을 환영합니다.",
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 53, 53),
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        padding: const EdgeInsets.all(0),
                        child: Card(),
                      ),
                      const UserInfo()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
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
                    alignment: Alignment.center,
                    child: const Text(
                      "플라잉 원숭이",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
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
                            EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                        leading: Icon(Icons.my_location),
                        title: Text("Location"),
                        subtitle: Text("내일배움캠프 - 15조(Android B반)"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person_pin_sharp),
                        title: Text("Members"),
                        subtitle: SizedBox(
                          // width: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("팀장 이다민",
                                  softWrap: false,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis),
                              Text("팀원 김현정 남소진 양윤혁 이호식 황수연",
                                  softWrap: false,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                        width: 15,
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("About us"),
                        subtitle: Text(
                            "팀원들이 원숭이처럼 재밌고 유쾌하게 프로젝트를 즐기면서 자유롭고 창의적인 사고로 프로젝트를 만들어내자!"),
                      ),
                      SizedBox(
                        height: 15,
                        width: 15,
                      )
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
