import 'package:flutter/material.dart';
import 'package:surat_app/helper/color.dart';

class SuratMasuk extends StatefulWidget {
  const SuratMasuk({super.key});

  @override
  State<SuratMasuk> createState() => _SuratMasukState();
}

class _SuratMasukState extends State<SuratMasuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 48, left: 24, right: 24),
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: secondaryColor),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Permintaan Anggaran Contoh",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                    const Text("Perihal: Permintaan"),
                    const SizedBox(
                      height: 4,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pengirim: Dinas Kelautan",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "Selasa, 2 Jan 2024",
                                style: TextStyle(fontSize: 8),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.green),
                            child: const Center(
                                child: Text(
                              "Baca Sekarang",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: secondaryColor),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Permintaan Anggaran Contoh",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                    const Text("Perihal: Permintaan"),
                    const SizedBox(
                      height: 4,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pengirim: Dinas Kelautan",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "Selasa, 2 Jan 2024",
                                style: TextStyle(fontSize: 8),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey),
                            child: const Center(
                                child: Text(
                              "Sudah Dibaca",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
