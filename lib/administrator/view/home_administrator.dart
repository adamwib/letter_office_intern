import 'package:flutter/material.dart';
import 'package:surat_app/administrator/view/surat_masuk.dart';
import 'package:surat_app/administrator/widget/main_menu.dart';
import 'package:surat_app/helper/color.dart';

class HomeAdministrator extends StatefulWidget {
  const HomeAdministrator({super.key});

  @override
  State<HomeAdministrator> createState() => _HomeAdministratorState();
}

class _HomeAdministratorState extends State<HomeAdministrator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 48,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: MainMenu(
                    title: "Surat Masuk",
                    image: ("assets/icon/surat_masuk.png"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuratMasuk()));
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: MainMenu(
                    title: "Surat Keluar",
                    image: ("assets/icon/surat_keluar.png"),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: MainMenu(
                    title: "Arsip Surat",
                    image: ("assets/icon/arsip.png"),
                    onTap: () {},
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: MainMenu(
                    title: "Buat Surat",
                    image: ("assets/icon/buat_surat.png"),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: lightColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icon/surat_masuk.png",
                            height: 48,
                            color: primaryColor,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Expanded(
                            // Move Expanded here
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Permintaan Anggaran Contoh",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Selasa, 12 Juni 2024",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      "sudah dibaca",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icon/surat_keluar.png",
                            height: 48,
                            color: primaryColor,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Expanded(
                            // Move Expanded here
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Surat Undangan Contoh",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Selasa, 12 Juni 2024",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      "sudah dibaca",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.green),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
