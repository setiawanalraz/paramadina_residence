import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/house_model.dart';

class HousePageDetail extends StatelessWidget {
  final HouseModel houseModel;
  const HousePageDetail({
    Key? key,
    required this.houseModel,
  }) : super(key: key);

  void _launchWhatsApp(String number, String message) async {
    String url = "https://api.whatsapp.com/send?phone=$number&text=$message";

    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Rumah ${houseModel.title}",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              child: Hero(
                tag: houseModel.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    houseModel.imgUrl,
                    height: (MediaQuery.of(context).orientation ==
                            Orientation.portrait)
                        ? MediaQuery.of(context).size.height / 4
                        : MediaQuery.of(context).size.height,
                    width: (MediaQuery.of(context).orientation ==
                            Orientation.portrait)
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                houseModel.description,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(80, 12, 80, 12),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 16)),
                  overlayColor: MaterialStateProperty.resolveWith(
                    (states) {
                      return states.contains(MaterialState.pressed)
                          ? Colors.lime
                          : null;
                    },
                  ),
                ),
                onPressed: () async {
                  _launchWhatsApp(
                    "6285882036847",
                    "Halo *The Paramadians*, \nSaya sangat tertarik untuk memiliki hunian *${houseModel.title}* di *Paramadina Residence* dan ingin membicarakan lebih lanjut",
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Hubungi kami",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
