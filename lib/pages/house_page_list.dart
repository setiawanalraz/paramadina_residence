import 'package:flutter/material.dart';
import 'package:paramadina_residence/models/house_model.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_nav_bar.dart';
import 'house_page_detail.dart';

class HousePageList extends StatelessWidget {
  const HousePageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(titleAppBar: "Daftar Tipe Rumah"),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.separated(
          padding: const EdgeInsets.only(top: 0.0),
          itemBuilder: (_, index) {
            return Material(
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Banner(
                  color: Colors.green,
                  message: "Mulai dari ${houseList[index].price} Juta",
                  location: BannerLocation.bottomEnd,
                  child: InkWell(
                    child: Stack(
                      children: [
                        Hero(
                          tag: houseList[index].id,
                          child: Image.asset(
                            houseList[index].imgUrl,
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
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              color: Colors.lime,
                              child: Text(
                                houseList[index].title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HousePageDetail(
                              houseModel: houseList[index],
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (_, builder) => const SizedBox(height: 10),
          itemCount: houseList.length,
        ),
      ),
    );
  }
}
