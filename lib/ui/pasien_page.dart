import 'package:flutter/material.dart';
import 'package:data_klinik/model/home.dart';
import 'package:data_klinik/model/pasien.dart';
import 'package:data_klinik/ui/pasien_detail.dart';

class PasienPage extends StatefulWidget {
  final Home home;

  const PasienPage({super.key, required this.home});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Nia Raadhani"),
              ),
            ),
            onTap: () {
              Pasien nina = Pasien(
                nomorRm: "69",
                namaPasien: "Nia Ramadhani",
                tanggalLahirpasien: "9 Januari 2000",
                nomorTeleponpasien: "08201134729",
                alamat: "Jakarta",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienDetai(pasien: nina),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
