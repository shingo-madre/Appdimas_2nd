import 'package:flutter/material.dart';

class Event {
  final int id;
  final String title, description, jadwal;
  final List<String> images;
  // final List<Color> colors;
  final double rating;
  final bool semua, terbaru, populer, terdekat, sedangBerjalan, acaraSaya;

  Event({
    @required this.id,
    @required this.images,
    // @required this.colors,
    this.rating = 0.0,
    this.semua = false,
    this.terbaru = false,
    this.populer = false,
    this.terdekat = false,
    this.sedangBerjalan = false,
    this.acaraSaya = false,
    @required this.title,
    @required this.description,
    @required this.jadwal,
  });
}

// list Events
List<Event> listEvents = [
  Event(
    id: 1,
    images: [
      "assets/images/gambar_event_1.png",
      "assets/images/gambar_event_2.png",
      "assets/images/gambar_event_3.png",
    ],
    // colors: [
    //   Color(0xFFF6625E),
    //   Color(0xFF836DB8),
    //   Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Relawan Kru Vaksinasi",
    description: "Jika anda seorang Dokter Umum, Perawat, Bidan, Analis, atau Rekam Medik silahkan daftarkan diri anda.",
    rating: 4.8,
    semua: true,
    acaraSaya: true,
    jadwal: "2 Juli 2021"
  ),
  Event(
    id: 2,
    images: [
      "assets/images/gambar_event_2.png",
    ],
    // colors: [
    //   Color(0xFFF6625E),
    //   Color(0xFF836DB8),
    //   Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Gerakan Peduli Banjir",    
    description: "Semakin derasnya hujan yang turun belakangan ini, membuat beberapa lokasi di Kota Jakarta mengalami banjir hebat.",
    rating: 4.1,
    semua: true,
    acaraSaya: true,
    jadwal: "5 Agustus 2021"
  ),
  Event(
    id: 3,
    images: [
      "assets/images/gambar_event_3.png",
    ],
    // colors: [
    //   Color(0xFFF6625E),
    //   Color(0xFF836DB8),
    //   Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Event Name",
    description: "Lorem qui enim sunt deserunt consequat ipsum pariatur commodo.",
    rating: 4.1,
    semua: true,
    sedangBerjalan: true,
    jadwal: "30 Desember 2021"
  ),
];
