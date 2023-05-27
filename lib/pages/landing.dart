// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../data/partials/hex_color.dart';
import '../data/widgets/bottom_navigation_landing.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 28),
                      child: Text(
                        'Selamat Datang di',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    Text(
                      'Portal SMKN 69 Jakarta',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                    Image.asset('assets/img/pusat-illustrasi.png'),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 40),
                      child: Container(
                        width: double.infinity,
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            const ButtonNavigation(
                                img: 'icon-landing-smarteschool.png',
                                title: 'Smarteschool'),
                            const ButtonNavigation(
                                img: 'icon-landing-pusat-informasi.png',
                                title: 'Pusat Informasi'),
                            const ButtonNavigation(
                                img: 'icon-landing-jelajah-sekolah.png',
                                title: 'Jelajah Sekolah'),
                            const ButtonNavigation(
                                img: 'ppdb.png', title: 'PPDB'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    LandingSection(
                      title: 'Smarteschool',
                      img: 'Schooline.png',
                      description:
                          'Smarteschool merupakan aplikasi penunjang kegiatan sekolah maupun pendidikan secara digital, dengan memberikan berbagai layanan yang dapat memudahkan segala aktivitas siswa, guru, maupun tenaga ahli sekolah dalam menjalankan kegiatan belajar mengajar yang berbasis online.',
                    ),
                    LandingSection(
                      title: 'Pusat Informasi SMKN 69 Jakarta',
                      img: 'web-sekolah.png',
                      description:
                          'Pusat Informasi SMKN 69 Jakarta menyediakan berbagai macam informasi berupa, profile, rekam jejak akademis, artikel, berita, kalender pembelajaran, sarana dan prasaranan dan masih banyak layanan informasi lainnya yang dapat diakses secara publik',
                    ),
                    LandingSection(
                      img: 'Virtual\ Tour.png',
                      title: 'Jelajah Sekolah',
                      description:
                          'Jelajah Sekolah memberikan layanan akses kepada publik untuk dapat melihat secara langsung mengenai kondisi sarana dan prasarana yang ada di SMKN 69 Jakarta secara online',
                    ),
                    LandingSection(
                      img: 'PPDB\ section.png',
                      title: 'PPDB',
                      description:
                          'Jadwal Penerimaan Peserta Didik Baru dan Mendaftar ada pada di menu ini',
                    ),
                    Text(
                      '©SMKN 69 Jakarta x Smarteschool 2021. Hak Cipta Dilindungi oleh Undang-Undang',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 10),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Powered by Smarteschool.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: colorFromHex('#1890ff'), fontSize: 10),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LandingSection extends StatelessWidget {
  final String img;
  final String title;
  final String description;
  const LandingSection({
    Key? key,
    required this.img,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Image.asset('assets/img/$img'),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    description,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.grey.shade600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colorFromHex('0d6efd')),
                          onPressed: () {},
                          child: Text('Lihat Lebih Lanjut')),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
