import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  // Variabel untuk melacak elemen yang diklik
  int? _clickedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST VIEW SCREEN"),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: ListView(
        padding: const EdgeInsets.all(
            8.0), // Tambahkan padding untuk keseluruhan list
        children: List.generate(7, (index) {
          // Data jurusan untuk setiap box
          final titles = [
            "S1 Teknik Informatika",
            "S1 Sistem Informasi",
            "S1 Ilmu Komunikasi",
            "S1 Pariwisata",
            "S1 Hukum",
            "S1 Teknik Sipil",
            "S1 Teknologi Hasil Pertanian"
          ];

          // Warna berdasarkan index untuk efek bergantian
          final color = index.isEven
              ? const Color.fromARGB(255, 224, 191, 0)
              : const Color.fromARGB(255, 208, 209, 140);

          return GestureDetector(
            onTap: () {
              setState(() {
                _clickedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8.0), // Spasi antar box
              height: 175,
              decoration: BoxDecoration(
                color: _clickedIndex == index ? Colors.grey[300] : color,
                border: Border.all(color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Posisi bayangan
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  titles[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
