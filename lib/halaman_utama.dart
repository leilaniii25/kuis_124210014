import 'package:kuis_014_lani/halaman_detail.dart';
import 'package:kuis_014_lani/data_buku.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[300],
          centerTitle: true,
          title: Text ('Data Buku')
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index){
          final DataBuku lokasi = listBuku[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HalamanDetail(lokasi: lokasi,),
                ),
              );
            },
            child: Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 430,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Image.network(
                        lokasi.imageLink,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(lokasi.title,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                        ),),

                  ],

                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
