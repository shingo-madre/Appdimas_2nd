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
      "assets/images/gambar_event_1.1.png",
      "assets/images/gambar_event_1.2.png",
    ],
    title: "Relawan Kru Vaksinasi",
    description: "Jika anda seorang Dokter Umum, Perawat, Bidan, Analis, atau Rekam Medik silahkan daftarkan diri anda.",
    rating: 4.8,
    semua: true,
    acaraSaya: true,
    terdekat: true,
    sedangBerjalan: true,
    jadwal: "2 Juli 2021"
  ),
  Event(
    id: 2,
    images: [
      "assets/images/gambar_event_2.png",
    ],
    title: "Gerakan Peduli Banjir",    
    description: "Semakin derasnya hujan yang turun belakangan ini, membuat beberapa lokasi di Kota Jakarta mengalami banjir hebat.",
    rating: 4.1,
    semua: true,
    populer: true,
    jadwal: "5 Agustus 2021"
  ),
  Event(
    id: 3,
    images: [
      "assets/images/gambar_event_3.png",
    ],
    title: "Relawan Bantu Kemiskinan",
    description: "Lorem qui enim sunt deserunt consequat ipsum pariatur commodo.",
    rating: 4.1,
    semua: true,
    sedangBerjalan: true,
    terbaru: true,
    jadwal: "30 Desember 2021"
  ),
  Event(
    id: 4,
    images: [
      "assets/images/gambar_event_4.png",
    ],
    title: "Relawan Banjir Surabaya",
    description: "Lorem qui enim sunt deserunt consequat ipsum pariatur commodo.Aliquip ut eiusmod amet anim quis eu cillum anim quis et consectetur nisi do.",
    rating: 4.8,
    semua: true,
    acaraSaya: true,
    terdekat: true,
    terbaru: true,
    jadwal: "2 Juli 2021"
  ),
  Event(
    id: 5,
    images: [
      "assets/images/gambar_event_5.png",
    ],
    title: "Relawan Perbaikan Jalan",
    description: "Ut consequat sint esse occaecat labore dolore non elit veniam consectetur cillum laboris anim nisi.",
    rating: 4.8,
    semua: true,
    acaraSaya: true,
    jadwal: "2 Juli 2021"
  ),
  Event(
    id: 6,
    images: [
      "assets/images/gambar_event_6.png",
    ],
    title: "Pembangunan Jembatan Roboh",
    description: "Qui quis dolor eiusmod non.Ex officia magna mollit tempor amet elit tempor incididunt id ea sunt consequat culpa dolor.",
    rating: 4.8,
    semua: true,
    terbaru: true,
    jadwal: "2 Juli 2021"
  ),
  Event(
    id: 7,
    images: [
      "assets/images/gambar_event_7.png",
    ],
    title: "Bersih-Bersih Kali",
    description: "Deserunt duis velit reprehenderit sit labore ad cupidatat do.Sint est excepteur excepteur magna ea laboris cillum aliquip officia culpa.",
    rating: 4.8,
    semua: true,
    populer: true,
    jadwal: "2 Juli 2021"
  ),
];
