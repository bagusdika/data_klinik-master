import 'package:data_klinik/model/home.dart';
import 'package:flutter/material.dart';
import 'package:data_klinik/model/pegawai.dart';
import 'package:data_klinik/ui/pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  final Home home;

  const PegawaiPage({super.key, required this.home});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Bagus Dika Saputra "),
              ),
            ),
            onTap: () {
              Pegawai RivaldlliCandiyansah = Pegawai(
                nip: "12210677",
                namaPegawai: " Bagus Dika Saputra",
                tanggalLahir: "11 November 1999",
                nomorTelepon: "08155376077",
                email: "12210677@bsi.ac.id",
                password: "12345",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PegawaiDetail(pegawai: RivaldlliCandiyansah),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
