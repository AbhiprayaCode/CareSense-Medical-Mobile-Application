import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HospitalPage(),
    theme: ThemeData(
      fontFamily: 'Poppins',
      primarySwatch: Colors.teal,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
  ));
}

class HospitalPage extends StatefulWidget {
  @override
  _HospitalPageState createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
  final List<Map<String, dynamic>> regions = [
    {
      'name': 'Jakarta Pusat',
      'hospitals': [
        {
          'name': 'Abdi Waluyo Hospital',
          'address': 'Jl. HOS. Cokroaminoto No.31-33, RT.1/RW.3, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10310',
          'locationLink': 'https://maps.app.goo.gl/cqNd5CK3N2SeZ9ih9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO5rntLuA5ngEWx1D4fbN-hRZRDPkDJ380vnxV0=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Menteng Mitra Afia Hospital',
          'address': 'Jl. Kalipasir No.9, RT.14/RW.10, Kb. Sirih, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10340',
          'locationLink': 'https://maps.app.goo.gl/vFjmCnadGs6kufgK7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMy0ppsKHKh-t0Mh6X5885M9XjYrT1cGY6031oz=w408-h612-k-no',
          'description': '',
        },
        {
          'name': 'Kramat 128 Hospital',
          'address': 'Jl. Kramat Raya No.128 1, RT.1/RW.8, Kenari, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10430',
          'locationLink': 'https://maps.app.goo.gl/aq1rMVnsQK77iCEU7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNClBZxK80ExmU_a6IEzpVU44maocho8EsnE4DI=w408-h614-k-no',
          'description': '',
        },
        {
          'name': 'YPK Mandiri Hospital',
          'address': '22, Jl. Gereja Theresia No.22, RT.7/RW.4, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350',
          'locationLink': 'https://maps.app.goo.gl/8fmDKikgoyjuHtts5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPI-C8TEM7siN2uOAC9V6QAui8BSxWm31KDU7rK=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Budi Kemuliaan Hospital',
          'address': 'Jl. Budi Kemuliaan No.25, RT.2/RW.3, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110',
          'locationLink': 'https://maps.app.goo.gl/cwMT5sNtNfqFSNqC7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMrEIQI6jcP7z79FqRbeSi65n3uh2j7rAyPd1Tj=w522-h240-k-no',
          'description': '',
        },
        {
          'name': 'Gatot Subroto Army Hospital',
          'address': 'I, Jl. Kwini No.1, RT.5/RW.1, Senen, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10410',
          'locationLink': 'https://maps.app.goo.gl/zjRg8tp5ZyRGS6bP8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMqnaI7XhdIFdrxpDt0MyhL-sy4D43mV8alj5p1=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Husada Hospital',
          'address': 'Jl. Raya Mangga Besar No.137-139, Mangga Dua Sel., Kecamatan Sawah Besar, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10730',
          'locationLink': 'https://maps.app.goo.gl/Ljr15S3Dd8Ln8M859',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP9l502VRQgtqXN_IJLsLQNY1SQCEab2PhZZmxX=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Jakarta Islamic Hospital',
          'address': 'Jl. Cemp. Putih Tengah I No.1, RT.11/RW.5, Cemp. Putih Tim., Kec. Cemp. Putih, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10510',
          'locationLink': 'https://maps.app.goo.gl/g9efyp4JkgQg92u58',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPQfee94m6yd2L5T8QV_4lJAr8lSZcizaoUjQm3=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'RSIA Bunda Jakarta Hospital',
          'address': 'Jl. Teuku Cik Ditiro No.28, RT.9/RW.2, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350',
          'locationLink': 'https://maps.app.goo.gl/YFeNyCRZycxdajjx6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM5MrvbYrs87xGVeUQ_doejk1bO59j1AzpcwXFJ=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Mitra Keluarga Kemayoran',
          'address': 'Jl. HBR Motik, RT.13/RW.6, Kb. Kosong, Kec. Kemayoran, Jkt Pusat, Daerah Khusus Ibukota Jakarta 10630',
          'locationLink': 'https://maps.app.goo.gl/6UfWwmgjCoVT8dFh9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN3WnDqByBBtDl8uqeWymVHOcjjp0tI0PtAw941=w408-h273-k-no',
          'description': '',
        },
        {
          'name': 'Radjak Hospital Salemba',
          'address': 'Jl. Salemba Tengah No.24-28, Paseban, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10440',
          'locationLink': 'https://maps.app.goo.gl/UTFF7K1kxGHw7zJu5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPr9gmSnvWGT59V0XhXX9fuPD11w8LnwJKBONNY=w408-h547-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Jakarta Utara',
      'hospitals': [
        {
          'name': 'Hermina Hospital Podomoro',
          'address': 'Blok E 3, Jl. Danau Agung 2 No.28 - 30, RT.3/RW.16, Sunter Agung, Kec. Tj. Priok, Jkt Utara, Daerah Khusus Ibukota Jakarta 14350',
          'locationLink': 'https://maps.app.goo.gl/ASMvpQTBy4mH57PH9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOtywOaNa56EhVMe9OdSIJw3kDxVgJxBwiEXJLb=w436-h240-k-no',
          'description': '',
        },
        {
          'name': 'Gading Peluit Hospital',
          'address': 'Jl. Boulevard Timur, Klp. Gading Tim., Kec. Klp. Gading, Jkt Utara, Daerah Khusus Ibukota Jakarta 14250',
          'locationLink': 'https://maps.app.goo.gl/bDAS3DPYk8336uUW7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPrU315tWFPENAL3BRv8QkIJi5KrcqKde7X29GM=w437-h240-k-no',
          'description': '',
        },
        {
          'name': 'Mitra Keluarga Hospital',
          'address': 'Jl. Raya Gading Kirana No.2, RT.18/RW.8, Klp. Gading Bar., Kec. Klp. Gading, Jkt Utara, Daerah Khusus Ibukota Jakarta 14240',
          'locationLink': 'https://maps.app.goo.gl/1ZrWDc87rz3Y8e22A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN1aJ0t9kLXM_DruEEzzXuYcQhX28-5oj6_mvJv=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Pelabuhan Jakarta Hospital',
          'address': 'Jl. Kramat Jaya Raya No.1, RT.7/RW.14, Tugu Utara, Kec. Koja, Jkt Utara, Daerah Khusus Ibukota Jakarta 14260',
          'locationLink': 'https://maps.app.goo.gl/hhqjk6RMKLbRytZJ7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOjhz9N_Yn_QP7bBkVZ9IjpRCfyyyROkKhhas3P=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'RSUD Tugu Koja',
          'address': 'Jl. Walang Permai No.39, RT.7/RW.12, Tugu Sel., Kec. Koja, Jkt Utara, Daerah Khusus Ibukota Jakarta 14260',
          'locationLink': 'https://maps.app.goo.gl/9NmppRLQjqPMLt4TA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN-vPq1XgJJn5Co9KR_jDDEkpMO2vkUthUimfyU=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Firdaus Hospital',
          'address': 'Komplek Bea Cukai, Jl. Siak No.14 J 5, Sukapura, Kec. Cilincing, Jkt Utara, Daerah Khusus Ibukota Jakarta 14140',
          'locationLink': 'https://maps.app.goo.gl/rjRm5kUPo4KD7pCE8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOWTPZEcE6XTPpOozBYFI3KIDZbdTFXWQetJPPt=w408-h307-k-no',
          'description': '',
        },
        {
          'name': 'Prof.Dr.Sulianti Saroso Hospital',
          'address': 'Jl. Sunter Permai Raya No.2, RT.2/RW.12, Papanggo, Kec. Tj. Priok, Jkt Utara, Daerah Khusus Ibukota Jakarta 14340',
          'locationLink': 'https://maps.app.goo.gl/6YcD6huqW9jjZ2YY8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMHQfUS2NlPHaR3YzGR5Zjp-GIHOaD_yZmoFr26=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Royal Progress Hospital',
          'address': 'Jl. Danau Sunter Utara Jl. Paradise 11 No.1-5, Sunter Agung, Kec. Tj. Priok, Jkt Utara, Daerah Khusus Ibukota Jakarta 14350',
          'locationLink': 'https://maps.app.goo.gl/XAPbVVDv3eU1Er8QA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOu1tBvJE2pYKVncAGmyCFbHxdSmJO5_M61yrJU=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Atma Jaya Hospital',
          'address': 'Jl. Pluit Raya No.2 21, RT.7/RW.8, Penjaringan, Kec. Penjaringan, Jkt Utara, Daerah Khusus Ibukota Jakarta 14440',
          'locationLink': 'https://maps.app.goo.gl/ZHi6bZHWDypxkLoT6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP3-P3R1B1vkgjTI5_K1fxWQyG7yPGWu0znpT4i=w408-h652-k-no',
          'description': '',
        },
        {
          'name': 'Pantai Indah Kapuk Hospital',
          'address': 'Jl. Pantai Indah Utara 3, Kapuk Muara, Kec. Penjaringan, Jkt Utara, Daerah Khusus Ibukota Jakarta 14460',
          'locationLink': 'https://maps.app.goo.gl/Cno8KJhyCB9LpGXP6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMTGY9wPI1vAsg6a2IHT0eAZGDP1CR2Nel_JCXK=w408-h242-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Jakarta Barat',
      'hospitals': [
        {
          'name': 'Royal Taruma Hospital',
          'address': 'Jl. Daan Mogot No.34, RT.8/RW.1, Tj. Duren Utara, Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470',
          'locationLink': 'https://maps.app.goo.gl/9Ud5H8vTE9TbxJ2d6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPWlNi1-_-3DHb3EM42zJ9A9Vb2lKATm51pvIxW=w451-h240-k-no',
          'description': '',
        },
        {
          'name': 'RSIA Metro Hospitals',
          'address': 'Jl. Duri Raya No.22, RT.2/RW.7, Duri Kepa, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11510',
          'locationLink': 'https://maps.app.goo.gl/ZXiGUDH6yA2MDWy39',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMkMu8umV5b4tYHAt4XFZrxqCeI7pAzco8FdQRV=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Siloam Hospitals Kebon Jeruk',
          'address': 'Jl. Perjuangan No.Kav.8, Kb. Jeruk, Kec. Kb. Jeruk, Jakarta, Daerah Khusus Ibukota Jakarta 11530',
          'locationLink': 'https://maps.app.goo.gl/8PfFjhuytopkhs3h8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO1K6k4P-jQiTkO9Ha0ookXjd1Bm7yP4I9Vn1cR=w408-h305-k-no',
          'description': '',
        },
        {
          'name': 'Pondok Indah Hospital',
          'address': 'Jl. Puri Indah Raya Blok S-2, RT.1/RW.2, Kembangan Sel., Kec. Kembangan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11610',
          'locationLink': 'https://maps.app.goo.gl/TzGDU2RzdHJhKJZx9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPKOo3rhn1PVPJ_WGwnuEF6sE2L8DjngGJi89s0=w408-h269-k-no',
          'description': '',
        },
        {
          'name': 'UKRIDA Hospital',
          'address': 'Jl. Arjuna Utara No.6, RT.6/RW.2, Duri Kepa, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11510',
          'locationLink': 'https://maps.app.goo.gl/voCz4yn6QfuK5ij38',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMolxk1dxZwyTHlE4kJpJHopUq9VCRQetP7idhM=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital Daan Mogot',
          'address': 'Jl. Kintamani Raya No.2, RT.1/RW.12, Kalideres, Kec. Kalideres, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11840',
          'locationLink': 'https://maps.app.goo.gl/rmYDkrZEX4u2uFBZ8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNwTRLr4CXPrpcxhn0SAPWCEAetsELDnDi6S2Zj=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Anggrek Mas Hospital',
          'address': 'Jl. Anggrek No.2B, RT.9/RW.2, Klp. Dua, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11550',
          'locationLink': 'https://maps.app.goo.gl/gzvUepNavuDQSRe27',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPQmZfYWy7q5xFu1iyqU4ufJYNNTIfR2p0DlIeL=w408-h282-k-no',
          'description': '',
        },
        {
          'name': 'Pelni Hospital',
          'address': 'Jl. K.S. Tubun No.92 - 94, RT.10/RW.1, Slipi, Kec. Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11410',
          'locationLink': 'https://maps.app.goo.gl/TVD7Y3qmJouQbkHQ6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOr_2LYOx1mei8HoU3u5azhTF_FG65qhVN5SULl=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'RSJ. Dr. Soeharto Heerdjan',
          'address': 'Jl. Prof. Dr. Latumeten No.1, RT.1/RW.4, Jelambar, Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11460',
          'locationLink': 'https://maps.app.goo.gl/GW65fWgadYP4sBvi7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOTtL5hmA05Pb7PfRJW_3J6HG_pvzTB995xjyh4=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kalideres District General Hospital',
          'address': 'Jl. Bedugul Jl. Daan Mogot, Kalideres, Kec. Kalideres, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11840',
          'locationLink': 'https://maps.app.goo.gl/X9BFQYrzjT3QMSMi9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPMPOefbozO9mduYdNvJyVDKrjy7h15iUJZgk0Q=w408-h271-k-no',
          'description': '',
        },
        {
          'name': 'Jakarta Eye Center Kedoya',
          'address': 'Jalan Terusan, Jl. Arjuna Utara Jl. Kedoya Pesing No.1, Kedoya Sel., Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11520',
          'locationLink': 'https://maps.app.goo.gl/hk9UzmhUKJWUtpZ16',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMfP9TclfDd3pdm30pkg8jDRFM9nQQM_iWU31aC=w408-h410-k-no',
          'description': '',
        },
        {
          'name': 'Pusat Jantung Nasional Harapan Kita',
          'address': 'Letjen S. Parman St No.Kav. 87, Slipi, Palmerah, West Jakarta City, Jakarta 11420',
          'locationLink': 'https://maps.app.goo.gl/c7fz4GeoDf3Vv5RZ8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN9XfmjaWi9hg5MMmRXAAinQK8YV-ojxRkatdm5=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Cinta Kasih Tzu Chi Hospital',
          'address': 'Jl. Kamal Raya Outer Ring Road, Cengkareng Tim., Kecamatan Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11730',
          'locationLink': 'https://maps.app.goo.gl/Ag8AaGGDAKPqA1EL8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPPBH7InZgXDGAzcfRWppNmjmRGoIQEQDpLdS-W=w408-h298-k-no',
          'description': '',
        },
        {
          'name': 'Mitra Keluarga Kalideres',
          'address': 'Jl. Peta Selatan No.1, Kalideres, Kec. Kalideres, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11840',
          'locationLink': 'https://maps.app.goo.gl/Xte7bxv53hwHktQS9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMVbMnvrSoBQrG_kPSvW5mbPBzTHreTMnSDE90=w412-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Jakarta Selatan',
      'hospitals': [
        {
          'name': 'MMC Hospital',
          'address': 'Jl.H.R. Rasuna Said No.C-21, RT.1/RW.7, Karet Kuningan, Kecamatan Setiabudi, Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12940',
          'locationLink': 'https://maps.app.goo.gl/H6Krdo3F4Saq6bcC9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO2fv4L07qOeNnY5Isw3X-XzJxAI_DQz_rDpNQ=w408-h612-k-no',
          'description': '',
        },
        {
          'name': 'Tebet Hospital',
          'address': 'MT Haryono St No.Kav.13, West Tebet, Tebet, South Jakarta City, Jakarta 12810',
          'locationLink': 'https://maps.app.goo.gl/2rt3i9ptWnnb8VHN7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM8k5g_yJAbEg14HtI9IuSu3ibfz2HgidnFdNcL=w411-h240-k-no',
          'description': '',
        },
        {
          'name': 'Pusat Pertamina Hospital',
          'address': 'Jl. Kyai Maja No.43, Gunung, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12120',
          'locationLink': 'https://maps.app.goo.gl/jBvbdz8srJe1tGAn8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMmlIFVitKZspWsSAsMaJjVK7KwGPsBVlANLCq7=w408-h543-k-no',
          'description': '',
        },
        {
          'name': 'Fatmawati Hospital',
          'address': 'Jl. RS. Fatmawati Raya, Cilandak Bar., Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12430',
          'locationLink': 'https://maps.app.goo.gl/Sx6fASk7QG8Y8w3w6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO_rJ82bySTxSPkbkzJxC89k3xySisPWxwMpShv=w408-h261-k-no',
          'description': '',
        },
        {
          'name': 'RSPI - Pondok Indah Hospital',
          'address': 'Jalan Metro Duta Kav. UE, Pd. Pinang, Kec. Kby. Lama, Daerah Khusus Ibukota Jakarta 12310',
          'locationLink': 'https://maps.app.goo.gl/uP3xbrz1zpMJM3J99',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOQXe42NgEJK7HgFvWUTZyniKEhlH0swhQmbdoG=w408-h249-k-no',
          'description': '',
        },
        {
          'name': 'RSIA Brawijaya Duren Tiga',
          'address': 'Jl. Duren Tiga Raya No.5, RT.1/RW.1, Pancoran, Kec. Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12780',
          'locationLink': 'https://maps.app.goo.gl/S67WHrVTexyWvENh8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipONa6b7fEnnJsdAXIJKin47NurYpL1NzZs8uP7r=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Surgical Hospital HALIMUN',
          'address': 'Jl. Halimun Raya No.9, RT.8/RW.2, Guntur, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12980',
          'locationLink': 'https://maps.app.goo.gl/a26iGwofFaS1vesQA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNwUfcYSmsEGTkO2n_LhxqRbEwBDxMQmE_pnpNz=w408-h280-k-no',
          'description': '',
        },
        {
          'name': 'Taman Puring Hospital',
          'address': 'Jl. Gandaria 1 No.20, RT.1/RW.2, Kramat Pela, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12130',
          'locationLink': 'https://maps.app.goo.gl/cNpTyLSmcuZg4Jfn9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMHuFqfLr6ujpGuhoeTtE0CoCNB-jnWm7kRsgdt=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Kebayoran Lama Hospital',
          'address': 'Jl. Jatayu, RT.1/RW.12, Kby. Lama Sel., Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12240',
          'locationLink': 'https://maps.app.goo.gl/Ddw4Ayb3ZqSvgnRPA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMi05MYgoE_j7f-yneV6QJhnwE3u4uwK2wWn6QT=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Aulia Hospital',
          'address': 'Jl. Jeruk Raya No.15, RT.11/RW.1, Jagakarsa, Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12620',
          'locationLink': 'https://maps.app.goo.gl/ZiTJSp8GiHmbtLFM8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNlskBAXKkdfsfHk7SIOo6KcbMC_efv_4LoL4E7=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Prikasih Hospital',
          'address': 'Jl. RS. Fatmawati Raya No.74, RT.5/RW.1, Pd. Labu, Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12450',
          'locationLink': 'https://maps.app.goo.gl/Bjt2C83UVFxCAmtz7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNbU5djyMghZJrlbvQ413C2j9HzSe5NsddtPcNo=w408-h271-k-no',
          'description': '',
        },
        {
          'name': 'Yadika General Hospital',
          'address': 'Jl. Ciputat Raya No.5, RT.13/RW.1, Kby. Lama Sel., Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12240',
          'locationLink': 'https://maps.app.goo.gl/NNir4A1PE6j3YnyN7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNrSSsc6WZNFFvtkNWemeYzRMM_hW1t4q1WI19I=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kemang Medical Care Hospital',
          'address': 'Jl. Ampera Raya No.34, Ragunan, Ps. Minggu, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12540',
          'locationLink': 'https://maps.app.goo.gl/iMKR5117g3Ey5KbVA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOkSVBUQpEbYpOuYCPdoo22ytr4IBkic6munt_5=w408-h272-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Jakarta Timur',
      'hospitals': [
        {
          'name': 'Premier Jatinegara Hospital',
          'address': 'Jl. Jatinegara Timur No.85-87, RT.2/RW.2, Bali Mester, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13310',
          'locationLink': 'https://maps.app.goo.gl/6YjRRd3MpFjGjJGL6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO1wNr30s-U73bv-l8LoCITeTizMiSlCVO3hxT3=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Jakarta Heart Center',
          'address': 'Jl. Matraman Raya No.23, RT.2/RW.1, Palmeriam, Kec. Matraman, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13140',
          'locationLink': 'https://maps.app.goo.gl/XbzbgJSd9jb3GHY96',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPvn64FeaJENML5KAQJoiNdaVUqHM8L-lO_OjXu=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Harapan Bunda Hospital',
          'address': 'Jl. Raya Jakarta-Bogor No.KM.22 No.44, RT.8/RW.2, Rambutan, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13830',
          'locationLink': 'https://maps.app.goo.gl/MvPSCYTdN1xFZBAw7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPhbv8JSq7dlV_sxubyc3a-iMXmJluZAacPBT7X=w418-h240-k-no',
          'description': '',
        },
        {
          'name': 'Budhi Asih General Hospital',
          'address': 'Jl. Dewi Sartika III No.200, RT.1/RW.3, Cawang, Kec. Kramat jati, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13640',
          'locationLink': 'https://maps.app.goo.gl/XmxP3uRmtdzxMLHB7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOUbmih0RSSe9AudqYH7CZIBiFxrYGFBKCRGux_=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Alia Hospital',
          'address': 'Jl. Pahlawan Revolusi No.100, RT.4/RW.3, Pd. Bambu, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13430',
          'locationLink': 'https://maps.app.goo.gl/U9F7UU6866tBqTVA9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM5NmUKejm6_dgO2XrPfSgWUsD7NbbavENqsq8=w408-h436-k-no',
          'description': '',
        },
        {
          'name': 'Columbia Asia Hospital Pulomas',
          'address': 'Jl. Kayu Putih Raya No.1, RT.10/RW.16, Kayu Putih, Kec. Pulo Gadung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13210',
          'locationLink': 'https://maps.app.goo.gl/WWeMXctgMy8SsabZ7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipObH4RfBVJkgYp6UcKV_pRqL0vYQT4PHbgnejmk=w444-h240-k-no',
          'description': '',
        },
        {
          'name': 'Antam Medika Hospital',
          'address': 'Jl. Pemuda No.1A, Jatinegara Kaum, Kec. Pulo Gadung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13210',
          'locationLink': 'https://maps.app.goo.gl/aM7nWutzwCSX6Vk18',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN1WvrXqUpx77t3EuvZLb9gCA7Piste7SfYMlhA=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Pasar Rebo General Hospital',
          'address': 'Jl. TB Simatupang No.30, RT.9/RW.2, Gedong, Kec. Ps. Rebo, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13760',
          'locationLink': 'https://maps.app.goo.gl/VmEaSeTY3qtebtWv6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOfiQvc7FApGzbpdVmWlntwfZPh59mZT__9pRJl=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Prof. Dr. dr. Mahar Mardjono National Brain Center Hospital',
          'address': 'MT Haryono St No.Kav.11, Cawang, Kramat Jati, East Jakarta City, Jakarta 13630',
          'locationLink': 'https://maps.app.goo.gl/yiELj7Dw4Xr9vpkF6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPYZsEv0CbSgW-GhtzT-9R0Gh6RWLUElDTpdrDj=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Restu Kasih Hospital',
          'address': 'KM.19, Jl. Raya Bogor No.3A, RT.3/RW.1, Kramat Jati, Kec. Kramat jati, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13510',
          'locationLink': 'https://maps.app.goo.gl/LJFGdm2wzGCq1jKK8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO9BGz8LViygwRrxIX0cj4kobM-ZqTpZB77L5QL=w408-h725-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Semarang',
      'hospitals': [
        {
          'name': 'SMC Telogorejo Hospital Semarang',
          'address': 'Jl. Kh Ahmad Dahlan, Pekunden, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50134',
          'locationLink': 'https://maps.app.goo.gl/Q6nizXoYxAkDQkA3A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNk-H9DPzftUt_Jk9zXpGWZo0n8SRVst6m90fzd=w408-h281-k-no',
          'description': '',
        },
        {
          'name': 'Rumah Sakit Umum Daerah KRMT Wongsonegoro',
          'address': 'Jl. Fatmawati No.1, Mangunharjo, Kec. Tembalang, Kota Semarang, Jawa Tengah 50272',
          'locationLink': 'https://maps.app.goo.gl/Jm1VseRC5G7hXGxq9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOXqEjwT4rn-Fa5xjosN8A672dsz1QiptUUgD6l=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'RSKB Columbia Asia Semarang',
          'address': 'Jl. Siliwangi No.143, Kalibanteng Kulon, Kec. Semarang Barat, Kota Semarang, Jawa Tengah 50145',
          'locationLink': 'https://maps.app.goo.gl/J1Y7ECaVYAxMHfGU9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO2C9VwOec89MzijMtb28WmaQI0truSaV77Jd0p=w408-h248-k-no',
          'description': '',
        },
        {
          'name': 'Bhayangkara Semarang Hospital',
          'address': 'Jl. Majapahit No.140, Gayamsari, Kec. Gayamsari, Kota Semarang, Jawa Tengah 50248',
          'locationLink': 'https://maps.app.goo.gl/4zhgbKz9SDKC2oPZ7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNv5b4ukXN-e1tcvw8W3CoIBcBsORj6kG57sk6P=w486-h240-k-no',
          'description': '',
        },
        {
          'name': 'Central General Hospital Dr. Kariadi',
          'address': 'Jl. DR. Sutomo No.16, Randusari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50244',
          'locationLink': 'https://maps.app.goo.gl/XYMAJas9oTEYG4Wx7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNxmZ0WxKNVx_xK0L9bIU0Edkk9z48MhGzT8WE5=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Roemani Muhammadiyah Hospital',
          'address': 'Jl. Wonodri Sendang Raya No.22, Wonodri, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50242',
          'locationLink': 'https://maps.app.goo.gl/jomrkFftevJHPBhe8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP4FvXhvaYZJ1fUV-XMeB33ooDvfMLxj-owyWCz=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Siloam Hospitals Semarang',
          'address': 'Jl. Kompol Maksum No.296, Peterongan, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50242',
          'locationLink': 'https://maps.app.goo.gl/n567XMRtR5Ud6nCC6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPtpznnI4vJEosASeAWulUwvy-8g0ZDIZziJbhU=w408-h399-k-no',
          'description': '',
        },
        {
          'name': 'Nasional Diponegoro Hospital',
          'address': 'Jl. Prof. Moeljono S. Trastotenojo, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275',
          'locationLink': 'https://maps.app.goo.gl/uRUtToP5PV3ZzwnZ7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP2UaiSkVRWwB4HchofuYFGScGM5X8HGE5Ar0d5=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'RSUD dr Adhyatma MPH (RSUD Tugurejo) Provinsi Jawa Tengah',
          'address': 'Jl. Walisongo KM 8,5 No.137, Tambakaji, Kec. Ngaliyan, Kota Semarang, Jawa Tengah 50185',
          'locationLink': 'https://maps.app.goo.gl/vcmiXLGKqx56A8976',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPAqmCnUG93k3CEMvpjHWo9byzg20OMef22EHvj=w417-h240-k-no',
          'description': '',
        },
        {
          'name': 'Sultan Agung Islamic Hospital',
          'address': 'Jl. Kaligawe Raya No.Km. 4, Terboyo Kulon, Kec. Genuk, Kota Semarang, Jawa Tengah 50112',
          'locationLink': 'https://maps.app.goo.gl/2TiiRQNJdw6Jeh5H6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPEvkNyd9bSOqaq6WId_3U2NnWnP0v98WGd_JX7=w408-h408-k-no',
          'description': '',
        },
        {
          'name': 'Dr. Amino Gondohutomo Regional Psychiatric Hospital',
          'address': 'Jl. Brigjen Sudiarto No.347, Gemah, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50611',
          'locationLink': 'https://maps.app.goo.gl/pE9X9Qa8Y9dtNVRh7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO_R6sbAH1wOfryOK5UmuXzwuWoIZ5NlImY9Mis=w520-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Surakarta',
      'hospitals': [
        {
          'name': 'PKU Muhammadiyah Surakarta Hospital',
          'address': 'Jl. Ronggowarsito No.130, Timuran, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57131',
          'locationLink': 'https://maps.app.goo.gl/zSxG7T7qY6eFTXB5A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPUnkN8CVUqiA_kr13qVtZ5IL21_9hVMcYbcTbg=w408-h266-k-no',
          'description': '',
        },
        {
          'name': 'Hermina General Hospital',
          'address': 'Jl. Kolonel Sutarto No.16, Jebres, Kec. Jebres, Kota Surakarta, Jawa Tengah 57126',
          'locationLink': 'https://maps.app.goo.gl/N8BRAZhJw54dRPsAA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM4Oc7J4XhSJ9Fk_r2NOT74zy9sDzZbWjHiz9_P=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Rumah Sakit Umum Daerah (RSUD) Dr.Moewardi',
          'address': 'Jl. Kolonel Sutarto No.132, Jebres, Kec. Jebres, Kota Surakarta, Jawa Tengah 57126',
          'locationLink': 'https://maps.app.goo.gl/zr5pgLhAdKUT2Usi8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMLztC7AnMXffScQtDvr5lim7-wxc51DN6LlTg=w425-h240-k-no',
          'description': '',
        },
        {
          'name': 'JIH Solo Hospital',
          'address': 'Jl. Adi Sucipto No.118, Jajar, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57144',
          'locationLink': 'https://maps.app.goo.gl/M27LaCa1y6reRSGb8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOVxAGlH40eJiBJ34u7jsaBXAOAdOO-_R43FDEL=w408-h612-k-no',
          'description': '',
        },
        {
          'name': 'Kasih Ibu Surakarta Hospital',
          'address': 'Slamet Riyadi St No.404, Purwosari, Laweyan, Surakarta City, Central Java 57142',
          'locationLink': 'https://maps.app.goo.gl/LoFmjsoaxujFN5vMA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOkXYWudQi8ertqy3m6Pg715CEWTrPotiG2H5Bo=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Rumah Sakit Jiwa Daerah Surakarta',
          'address': 'Jl. Ki Hajar Dewantara No.80, Jebres, Kec. Jebres, Kota Surakarta, Jawa Tengah 57126',
          'locationLink': 'https://maps.app.goo.gl/nQUhPwUS6ekjefZ89',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO44tJoLLeZ0mNGHx-zrQd74sqg69Q75CiSbKVQ=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Panti Waluyo Hospital',
          'address': 'Jl. A. Yani No.1, Kerten, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57143',
          'locationLink': 'https://maps.app.goo.gl/BTbc6z5mWSXaKnqT7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPMAbc_5RhyFwXIpKQk5xrddeRE-XBk8wAf0DEM=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Dr.Oen Hospital',
          'address': 'Jl. Brigjend Katamso No.55, Tegalharjo, Kec. Jebres, Kota Surakarta, Jawa Tengah 57128',
          'locationLink': 'https://maps.app.goo.gl/5ucEHyoPcGZVsGAR7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMMfrxS8OvXJZb_WjFAWXfCmZZ16k5n19uluOo=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Brayat Minulya Surakarta (Brayat Minulya General Hospital)',
          'address': 'Jl. Dr. Setiabudi No.106, Manahan, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139',
          'locationLink': 'https://maps.app.goo.gl/jyfXSuDTR6dNC6TJA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNS63wtCOLWqzpmB6GC9cRfxvsLU-n2rlPUcTFi=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kustati Islamic General Hospital',
          'address': 'Jl. Kapten Mulyadi No.249, Ps. Kliwon, Kec. Ps. Kliwon, Kota Surakarta, Jawa Tengah 57118',
          'locationLink': 'https://maps.app.goo.gl/vWHFedCCGAuLnRQJ8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPdk6jIOCLqQ8_Z7p5G4li3xmFYrp6RdbVWRyY1=w408-h713-k-no',
          'description': '',
        },
        {
          'name': 'Bhayangkara Surakarta Hospital',
          'address': 'Jl. Adi Sucipto No.2, Manahan, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139',
          'locationLink': 'https://maps.app.goo.gl/PJnBWu9aqNdVNKNb8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMFiAlRNXse1ImSq-dHtroXBJhMSn6g4dz7G1a1=w408-h544-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Magelang',
      'hospitals': [
        {
          'name': 'RSUD Tidar Kota Magelang',
          'address': 'Jl. Tidar No.30A, Kemirirejo, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 56125',
          'locationLink': 'https://maps.app.goo.gl/HUSC27azUProPEGS8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOLxeFpgRMf3MoHx6l4K3WreC6LAo8B1X8iEWws=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Syubbanul Wathon Hospital',
          'address': 'Nuren, Purwosari, Tegalrejo, Magelang Regency, Central Java 56192',
          'locationLink': 'https://maps.app.goo.gl/aAE327EtX1SAN7Fs6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN7XfMPUtWY76tioH81Udg4MrEylgLxUwQa9KyU=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Soerojo Hospital',
          'address': 'Jl. Ahmad Yani No.169, Kramat Utara, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 56115',
          'locationLink': 'https://maps.app.goo.gl/ACsksTvoXVA8DZEZ9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOcD1jF1DTnkYPCPe8WKE7x5j7M5zwHFeh-hBzF=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'BUDI RAHAYU  Hospital',
          'address': 'Jl. Urip Sumoharjo No.15, Wates, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 51253',
          'locationLink': 'https://maps.app.goo.gl/nagCqmLNqwmTseh27',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOvu3MX6_zf3qiezV6otyV_CetJqcoI-AXbsXmV=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'RSIA Gladiool',
          'address': 'Jl. Kenanga No.2, RW.6, Kemirirejo, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 56122',
          'locationLink': 'https://maps.app.goo.gl/beF8Pu1g9qSG1UqC9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOEmymrGFddWyi6FOFAesnTxN2x_m1f79D9baU2=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Aisyiyah Muntilan Hospital',
          'address': 'Jl. Kh Ahmad Dahlan No.24, Kenalan, Pucungrejo, Kec. Muntilan, Kabupaten Magelang, Jawa Tengah 56414',
          'locationLink': 'https://maps.app.goo.gl/yNAz9whfgHqBAquf8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMBIdu7rX1jb6XVIxxVf-Ui8PA5y-xNOK1Baa_x=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Dr. Soedjono Hospital',
          'address': 'Jl. Flores, Wates, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 51253',
          'locationLink': 'https://maps.app.goo.gl/Ly1YfgjQ27axSVkS7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPhSERwPJwPSGzbZ83R2OKE3-EaeulI72XGWxw6=w408-h308-k-no',
          'description': '',
        },
        {
          'name': 'Drs. Bagus Panuntun Hospital',
          'address': 'Jl. Tidar No.30, RT.05, Kemirirejo, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 59214',
          'locationLink': 'https://maps.app.goo.gl/h4pKb7xFu3FDdFnr8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOaCe1GjmuOBI8gVEtCSiBRymVwMWh6qP8nZ6XG=w408-h544-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Salatiga',
      'hospitals': [
        {
          'name': 'RSI TUNAS HARAPAN SALATIGA',
          'address': 'Jl. Soekarno Hatta No.104, Cebongan, Kec. Argomulyo, Kota Salatiga, Jawa Tengah 50731',
          'locationLink': 'https://maps.app.goo.gl/FjjwXirScRNeV6AC7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPqastIiIpU4tJcZ11aglAS057zbYuj9TcEgZy2=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'RSIA Hermina Mutiara Bunda Salatiga',
          'address': 'Jl. Merak No.8, Mangunsari, Kec. Sidomukti, Kota Salatiga, Jawa Tengah 50721',
          'locationLink': 'https://maps.app.goo.gl/oGLSiPs1g9DNdVuf6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO-0oCGiGJF00BRbxEb_DpgN9S_3he_s0MTnpTX=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Paru Dr. Ario Wirawan Hospital',
          'address': 'Jl. Hasanudin No.806, Mangunsari, Kec. Sidomukti, Kota Salatiga, Jawa Tengah 50721',
          'locationLink': 'https://maps.app.goo.gl/GeVvNhb6WWEVKyh18',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMZOHsA_JY-MgnF3PVOD0yt3ykU9xdvUYyLKRj0=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'RSUD Kota Salatiga - Ruang Operasi',
          'address': 'Mangunsari, Sidomukti, Salatiga City, Central Java 50721',
          'locationLink': 'https://maps.app.goo.gl/2UqxnrVq4wkRUxek8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMTMyYTqDyVJAn0MwEWoU30v8Jvr0hvdpVc4bGd=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Sejahtera Bakti Hospital',
          'address': 'Jl. Damar Jl. Magersari No.136, Tegalrejo, Kec. Argomulyo, Kota Salatiga, Jawa Tengah 50733',
          'locationLink': 'https://maps.app.goo.gl/1Xb6ZqAenu2hmtbaA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP16Ot7BjOACVWUlYCe_Eik5rw7bU1o4rwFZoFw=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Pekalongan',
      'hospitals': [
        {
          'name': 'Siti Khodijah Pekalongan Hospital',
          'address': 'Jl. Bandung No.39-47, Sugihwaras, Kec. Pekalongan Tim., Kota Pekalongan, Jawa Tengah 51129',
          'locationLink': 'https://maps.app.goo.gl/1GRctJxJxsKg6sJDA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNFEorKeVLg1ZcQCR4oGiKW_NhKy5YZ4hmcsU2n=w505-h240-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital Pekalongan',
          'address': 'Jl. Jenderal Sudirman No.16a, RW.6, Podosugih, Kec. Pekalongan Bar., Kota Pekalongan, Jawa Tengah 51112',
          'locationLink': 'https://maps.app.goo.gl/Xkzf2zK3oQZogruP9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPuqEhnTskJ6z8ckIYXlbnFcFa1es1docHVZAfs=w507-h240-k-no',
          'description': '',
        },
        {
          'name': 'Regional General Hospital Bendan',
          'address': 'Jl. Sriwijaya No.2, Bendan, Kec. Pekalongan Bar., Kota Pekalongan, Jawa Tengah 51119',
          'locationLink': 'https://maps.app.goo.gl/U8oPGhRTTFSSramF8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOclCJ5ov0U1vAJoynISIBPfCXuZf7F7QlJmrSx=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Budi Rahayu Hospital',
          'address': 'Jl. Barito No.5, Dukuh, Kec. Pekalongan Utara, Kota Pekalongan, Jawa Tengah 51146',
          'locationLink': 'https://maps.app.goo.gl/Cx9vd9VuR8vWnJV59',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNoWNaRM3q9WsflxqWh0tFeulTJ2u0AKakeFK4v=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Anugerah Hospital',
          'address': 'Jl. P. Kemerdekaan No.3, Kramatsari, Kec. Pekalongan Bar., Kota Pekalongan, Jawa Tengah 51145',
          'locationLink': 'https://maps.app.goo.gl/CBLtquAdMVbY6EBdA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPRVKXxI4xg4gWaTe8BUupKfY-BV10ykNPZKqkC=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Karomah Holistic Hospital',
          'address': 'Jl. Gajah Mada Bar. No.124, Tirto, Kec. Pekalongan Bar., Kota Pekalongan, Jawa Tengah 51118',
          'locationLink': 'https://maps.app.goo.gl/LjGNHkMKc6N1Mbvk6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMDvQaCqWspKtOa5ea63jo4PKh8l5dZrABBHGbj=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Islam PKU Hospital',
          'address': 'Jl. Raya Ambokembang No.42-44, Cangkring, Ambokembang, Kec. Kedungwuni, Kabupaten Pekalongan, Jawa Tengah 51173',
          'locationLink': 'https://maps.app.goo.gl/EDBi2NPuiLmSLg5J9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO0hen2RbC8zq4YePP0-JTap3AYm5VXKpowzEkn=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Prima Sehat Pekalongan Hospital',
          'address': '4H79+MR7, Jl. Nasional 1, Cokrah, Rembun, Kec. Siwalan, Kabupaten Pekalongan, Jawa Tengah 51137',
          'locationLink': 'https://maps.app.goo.gl/ZD79bgQafAqhUw6r7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO-slj5-iSjyWQ0mKzOjtc5CuHCHha11s1DasIn=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Garda Medika - RSIA Anugerah',
          'address': 'Jl. P. Kemerdekaan No.3, Dukuh, Kec. Pekalongan Utara, Kota Pekalongan, Jawa Tengah 51145',
          'locationLink': 'https://maps.app.goo.gl/jdKjZveACkSnb5jc8',
          'image': 'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=mdC8x-y04Tl8c-nkuPYdhQ&cb_client=search.gws-prod.gps&w=408&h=240&yaw=268.1751&pitch=0&thumbfov=100',
          'description': '',
        },
      ],
    },
    {
      'name': 'Tegal',
      'hospitals': [
        {
          'name': 'Kardinah Hospital',
          'address': 'Jalan AIP Jl. KS. Tubun No.2, Kejambon, Tegal Timur, Tegal City, Central Java 52124',
          'locationLink': 'https://maps.app.goo.gl/8pNvBNpwd2wN29VZA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPDFb_sMaZaDTjeA4Esi8LIOHj2LmF0fsZkVcaY=w587-h240-k-no',
          'description': '',
        },
        {
          'name': 'Mitra Siaga Hospital',
          'address': 'Jl. Pala Raya No.54, Dampyak Tengah, Dampyak, Kec. Kramat, Kabupaten Tegal, Jawa Tengah 52181',
          'locationLink': 'https://maps.app.goo.gl/pamMDpFeDwj1RooM9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMXRYL_-xtcaodliuJmbJzNSOzfwnhVkJ-nfSeh=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'PKU Muhammadiyah Hospital',
          'address': 'Jalan Raya Singkil No.KM 0,5, Kb. Baru, Adiwerna, Kec. Adiwerna, Kabupaten Tegal, Jawa Tengah 52194',
          'locationLink': 'https://maps.app.goo.gl/PBvN7G6jKa15M4qp7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPQ-Y3gkUFuUWuXbC1zUPgqd5_rmdk7PcWNP0ds=w408-h541-k-no',
          'description': '',
        },
        {
          'name': 'Pala Raya Hospital',
          'address': 'Jl. Pala Raya No.11A, Sibata, Mejasem Bar., Kec. Kramat, Kabupaten Tegal, Jawa Tengah 52181',
          'locationLink': 'https://maps.app.goo.gl/C2YWrux1Tp4UgW8w8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMP8O0vpGcIecxd9ZiaRL3PLS-8_zjZi4y6M34u=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Cendana Hospital',
          'address': 'Jl. KS. Tubun No.4, Kejambon, Kec. Tegal Tim., Kota Tegal, Jawa Tengah 52124',
          'locationLink': 'https://maps.app.goo.gl/1Rj4bJG3tjr7V9R3A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNq_clNk2pRrXgaZprJxgwtBcR1hFyl1VA2v6rt=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Hawari Essa Hospital',
          'address': 'Jl. Banjaranyar - Tegal, Kajen, Kec. Lebaksiu, Kabupaten Tegal, Jawa Tengah 52461',
          'locationLink': 'https://maps.app.goo.gl/qZSrtbpY56pSrT9y6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPRnfmQgCH6lCg_SaqopSB6BBGCxlG5YKkN00ne=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Harapan Sehat Hospital',
          'address': 'Jl. Gatot Subroto, Salam, Dukuhsalam, Kec. Slawi, Kabupaten Tegal, Jawa Tengah 52418',
          'locationLink': 'https://maps.app.goo.gl/jpKF7z2szzskzM9UA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPCm0N8iZd2ogb8tchuZSCEJlg38cqN9BqA6W7L=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Adella Hospital',
          'address': 'Jalan Professor Muhammad Yamin No.77, Perum Pepabri, Kudaile, Kec. Slawi, Kabupaten Tegal, Jawa Tengah 52414',
          'locationLink': 'https://maps.app.goo.gl/eAHpv3XPZ84YehTk9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOJ9Ybkf4gl89ycvj-zqygiV6_rCBCsWwfIOg3M=w533-h240-k-no',
          'description': '',
        },
        {
          'name': 'Maternity Home Rahma',
          'address': 'Jl. Sultan Agung No.34, Randugunting, Kec. Tegal Sel., Kota Tegal, Jawa Tengah 52124',
          'locationLink': 'https://maps.app.goo.gl/1yKrwDJQ8NSfgAHR6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNqrEQBKNBD8Gc7xA5vVsib5FiExxv_KuSa8NiF=w408-h268-k-no',
          'description': '',
        },
        {
          'name': 'Maternity Home Rahma',
          'address': 'Jl. Sultan Agung No.34, Randugunting, Kec. Tegal Sel., Kota Tegal, Jawa Tengah 52124',
          'locationLink': 'https://maps.app.goo.gl/1yKrwDJQ8NSfgAHR6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNqrEQBKNBD8Gc7xA5vVsib5FiExxv_KuSa8NiF=w408-h268-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Bandung',
      'hospitals': [
        {
          'name': 'Santosa Hospital Bandung Central',
          'address': 'Jl. Kebon Jati No.38, Kb. Jeruk, Kec. Andir, Kota Bandung, Jawa Barat 40181',
          'locationLink': 'https://maps.app.goo.gl/vQdSyCSa3xcwWHibA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO0i0A686pq-DWAVMb2X-oAG9c-rm_wKUQephUi=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Mayapada Hospital Bandung',
          'address': 'Jl. Terusan Buah Batu No.5, Batununggal, Kec. Bandung Kidul, Kota Bandung, Jawa Barat 40266',
          'locationLink': 'https://maps.app.goo.gl/1zcXHxzV9WirxpQ58',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOibp1yStfoVklx1Scv_qLpuRLHZws7KUcPtJ4O=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital Pasteur',
          'address': 'Jl. Dr. Djunjunan No.107, Pasteur, Kec. Cicendo, Kota Bandung, Jawa Barat 40173',
          'locationLink': 'https://maps.app.goo.gl/3uX7Rs8FQrEF5h2q8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOMwe9jYgjxLbr2Nh8eHqJmpJ7iiKF-rvKQH7ra=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Muhammadiyah Hospital',
          'address': 'Jl. K.H. Ahmad Dahlan No.53, Turangga, Kec. Lengkong, Kota Bandung, Jawa Barat 40264',
          'locationLink': 'https://maps.app.goo.gl/kwgcW2qCMPzCm3676',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMIJVFl7UxE1MfzJ79lyriIJi2sxeqL4oh1LK09=w635-h240-k-no',
          'description': '',
        },
        {
          'name': 'Advent Hospital',
          'address': 'Jl. Cihampelas No.161, Cipaganti, Kecamatan Coblong, Kota Bandung, Jawa Barat 40131',
          'locationLink': 'https://maps.app.goo.gl/5yXtPuaoxEG4Xxg3A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNCmcNq9_rNLdgVyh9JHYkftbsw0IpR4P5vUJQd=w577-h240-k-no',
          'description': '',
        },
        {
          'name': 'Regional General Hospital',
          'address': 'Jl. Rumah Sakit No.22, Pakemitan, Kec. Cinambo, Kota Bandung, Jawa Barat 45474',
          'locationLink': 'https://maps.app.goo.gl/mJDJ6M9v9JAkJpfDA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNaKusmwuvpKj1dMh7jDJyoLiWMfi16_6SmOnQ2=w425-h240-k-no',
          'description': '',
        },
        {
          'name': 'Santo Yusup Hospital',
          'address': 'Jl. Cikutra No.7, Cikutra, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40124',
          'locationLink': 'https://maps.app.goo.gl/9Jg2pPMJbf42HkAF7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO-2QqVCgHHLDPfsqfBB9dUf0raKjSJXnFdyTxL=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Arcamanik Hospital',
          'address': 'Jl. A.H. Nasution No.50, Antapani Wetan, Kec. Antapani, Kota Bandung, Jawa Barat 40291',
          'locationLink': 'https://maps.app.goo.gl/hoDcgfQQUG2RL525A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPWhMXyOWAwsTP1uHEHwkhLoXlAQ2ggcUvX1Sij=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Pasundan Hospital',
          'address': 'Jl. H. Wasid No.1, RT.008/RW.007, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132',
          'locationLink': 'https://maps.app.goo.gl/ij6YW5FQGupCcS4s6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMmhKUulh-iDrYDJlSqxKYoLL6q174RB90lk56l=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Santosa Hospital Bandung Kopo',
          'address': 'JJl. Raya Kopo No.461-463, Cirangrang, Kec. Babakan Ciparay, Kota Bandung, Jawa Barat 40227',
          'locationLink': 'https://maps.app.goo.gl/wNp6qtvw8yAVQPnZA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOL89W1ynYoETsBndHjux6ZfU7oO6oWAlA9igr0=w408-h288-k-no',
          'description': '',
        },
        {
          'name': 'Sariningsih Martadinata Hospital',
          'address': 'LLRE Martadinata St No.9, Citarum, Bandung Wetan, Bandung City, West Java 40115',
          'locationLink': 'https://maps.app.goo.gl/J7NaZNe4XmkciJMU7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPbKUqDr5uusRiiFtGopAZn67ndeoJWCWtJS5dX=w408-h299-k-no',
          'description': '',
        },
        {
          'name': 'Al-Ihsan  Hospital',
          'address': 'Jl. Kiastramanggala, Baleendah, Kec. Baleendah, Kabupaten Bandung, Jawa Barat 40375',
          'locationLink': 'https://maps.app.goo.gl/pd8XHhseLUepv4fWA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNncHR1fCiHXzVZyBUqEC7fk4czP6P7KZ0u7D6f=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Rajawali Hospital',
          'address': 'Jl. Rajawali Barat No.38, Maleber, Kec. Andir, Kota Bandung, Jawa Barat 40184',
          'locationLink': 'https://maps.app.goo.gl/pMpgUJPYdhNMLr8W9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNhfGOOmfkGVHzggddZAWHQLyY-uPZ05NFmpKHh=w408-h271-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Bekasi',
      'hospitals': [
        {
          'name': 'Mitra Keluarga Hospital',
          'address': 'Jl. Ahmad Yani, RT.002/RW.011, Kayuringin Jaya, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17144',
          'locationLink': 'https://maps.app.goo.gl/7JzTyXRhqkYjQ84y6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPwzlya8vcL-mLZWmXICWhBt5PE16-H4bJ9xmJI=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Primaya Hospital Timur',
          'address': 'Jl. HM. Joyo Martono No.47, RT.003/RW.021, Margahayu, Kec. Bekasi Tim., Kota Bks, Jawa Barat 17113',
          'locationLink': 'https://maps.app.goo.gl/pKfngNdcq3NC7M988',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO0kVCAzJl53S0qeKPYYklpU62aJDaaJ8DZnpQA=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Mitra Keluarga ospital',
          'address': 'Jl. Pengasinan Jl. Rw. Semut Raya, RT.04/RW.12, Margahayu, Kec. Bekasi Tim., Kota Bks, Jawa Barat 17113',
          'locationLink': 'https://maps.app.goo.gl/YTihHG2yZddoaat68',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNoUJnUmN9KlzURRx-ns_DVBLJedVUwhSeGXVDE=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'dr. Chasbullah Abdulmadjid Hospital',
          'address': 'Jl. Pramuka No.55, RT.006/RW.006, Marga Jaya, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17141',
          'locationLink': 'https://maps.app.goo.gl/ee7qhEQcK1wm1tGo7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPp3JspNTygOMHF76T2ZKGdNYBVpkNhGJpPz6-h=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Bella Hospital',
          'address': 'Jl. Insinyur H. Juanda No.141, RT.001/RW.001, Duren Jaya, Kec. Bekasi Tim., Kota Bks, Jawa Barat 17111',
          'locationLink': 'https://maps.app.goo.gl/D2vPqvEQjzetZbDG9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNRLsOnL5l5O-MYbu0ccZnngXrSCNsLKhhI4XLk=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Siloam Hospitals Bekasi Sepanjang Jaya',
          'address': 'Jl. Pramuka No.12, RT.004/RW.002, Sepanjang Jaya, Kec. Rawalumbu, Kota Bks, Jawa Barat 17114',
          'locationLink': 'https://maps.app.goo.gl/aYf3wVoZnntLmikb6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNUzTo-_WuU8ZUbDyAmAgVVruKVkTbfc2PmLI-R=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Siloam Hospitals Bekasi Timur',
          'address': 'Jl. Chairil Anwar No.27-36, RT.004/RW.009, Margahayu, Kec. Bekasi Tim., Kota Bks, Jawa Barat 17113',
          'locationLink': 'https://maps.app.goo.gl/H4wsHQwNiNSFruNm9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNA0RczUVAzK0vsFuuroZR14Mjtb65En3DV6nl3=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Permata Bekasi Hospital',
          'address': 'Jl. Mustika Jaya No.9, Mustika Jaya, Kec. Mustika Jaya, Kota Bks, Jawa Barat 17158',
          'locationLink': 'https://maps.app.goo.gl/JZ8iGiDag8FceQfz9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOX8caKB_fDVnxv3-954m4SrFAiB-zOj7tLDWv7=w506-h240-k-no',
          'description': '',
        },
        {
          'name': 'Primaya Hospital Bekasi Utara',
          'address': 'Jl. Kali Abang Tengah No.1 Lt.5, RT.001/RW.033, Tlk. Pucung, Kec. Bekasi Utara, Kota Bks, Jawa Barat 17122',
          'locationLink': 'https://maps.app.goo.gl/LduyY7WaueHemBpZ9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPh5neljSF3DzZNcTZDVdNFCrJDBF75DlRNa58=w408-h258-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital Galaxy',
          'address': 'Ruko Grand Galaxy City, Jl. Boulevar Raya Bar., RT.003/RW.017, Jaka Setia, Kec. Bekasi Sel., Kabupaten Bekasi, Jawa Barat 17147',
          'locationLink': 'https://maps.app.goo.gl/qwViD1x2gtkku2Mg6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPxXdl97yXI30t5dECLaD2gwY2yYc0AMbGe4MVp=w408-h408-k-no',
          'description': '',
        },
        {
          'name': 'Seto Hasbadi Hospital',
          'address': 'Jl. Raya Seroja No.19, RT.002/RW.028, Harapan Jaya, Kec. Bekasi Utara, Kota Bks, Jawa Barat 17124',
          'locationLink': 'https://maps.app.goo.gl/GDb444uCEigub45KA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNQ8MAdFmWymXlEojnuOdmQNujXqyUurNupWbs-=w508-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Bogor',
      'hospitals': [
        {
          'name': 'RSUD Bogor City',
          'address': 'Jl. DR. Sumeru No.120, RT.03/RW.20, Menteng, Kec. Bogor Bar., Kota Bogor, Jawa Barat 16112',
          'locationLink': 'https://maps.app.goo.gl/2kEBSuSwzF78eauf9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMf6XBkRSiW8cIA7cWvBBrrxclLixjk_gr_6uda=w408-h254-k-no',
          'description': '',
        },
        {
          'name': 'Azra Hospital Bogor',
          'address': 'Jl. Raya Pajajaran No.219, RT.02/RW.11, Bantarjati, Kec. Bogor Utara, Kota Bogor, Jawa Barat 16153',
          'locationLink': 'https://maps.app.goo.gl/fiY4n7dYKfNckyKa7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMgSoIFh_q1QJtz9ZsC886lmSqBOG6HHZgtEgpM=w450-h240-k-no',
          'description': '',
        },
        {
          'name': 'BMC MAYAPADA HOSPITA',
          'address': 'Jl. Pajajaran Indah V No.97, RT.01/RW.11, Baranangsiang, Kec. Bogor Tim., Kota Bogor, Jawa Barat 16143',
          'locationLink': 'https://maps.app.goo.gl/aPXCdasB9utg4dgX8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNMFv8ovB3krDDem4qpfIcYBTOwQwGbIVArJj2u=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Mulia Hospital Pajajaran',
          'address': 'Jl. Raya Pajajaran No.98, Bantarjati, Kec. Bogor Utara, Kota Bogor, Jawa Barat 16153',
          'locationLink': 'https://maps.app.goo.gl/WapLBpPZGJenmv996',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOX-beoICaeox_HKbOOGQGKQOoB_5kl-_Wpq0pK=w408-h271-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital',
          'address': 'Jalan Ring Road I Kav. 23, 25, 27, RT.08/RW.08, Curugmekar, Kec. Bogor Bar., Kota Bogor, Jawa Barat 16113',
          'locationLink': 'https://maps.app.goo.gl/yPLa8XMK5xxShX6U7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPMaxIvdIQI5x_pY9RefuZO_b7b1JvNnhvOe_vr=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Siloam Hospitals',
          'address': 'Jl. Raya Pajajaran No.27, RT.01/RW.04, Babakan, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat 14140',
          'locationLink': 'https://maps.app.goo.gl/9YzjvyWFdUkqEexDA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMnlK1TX07yzlsrcAo6k0WPoTckZoG6i05POuHb=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'PMI Hospitals',
          'address': 'Jl. Raya Pajajaran No.80, Bantarjati, Kec. Bogor Utara, Kota Bogor, Jawa Barat 16153',
          'locationLink': 'https://maps.app.goo.gl/Sm2y1mkxRVT8QUXUA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNZHnlcadObmcOCpCN1UJ5bSuIjVGs2XwHaCBYY=w408-h460-k-no',
          'description': '',
        },
        {
          'name': 'Salak Hospitals',
          'address': 'Jl. Jend. Sudirman No.8, RT.03/RW.07, Sempur, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat 16121',
          'locationLink': 'https://maps.app.goo.gl/r4dZJGyKP3643pzQ9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPl9FO_kHA0zC65mny7EUj2h7ur6VNlHYl9mNR3=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'BSH Hospitals',
          'address': 'Jl. Raya Tajur No.168, Muarasari, Kec. Bogor Sel., Kota Bogor, Jawa Barat 16137',
          'locationLink': 'https://maps.app.goo.gl/FrbMCvoki9PSeeCa9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPC0QP5Iib6goiRBFYleZNXKJC0QiwzZ-4yg_xd=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Nuraida Hospitals',
          'address': 'Jalan Haji Jl. Achmad Sobana No.105, RT.04/RW.06, Tegal Gundil, Kec. Bogor Utara, Kota Bogor, Jawa Barat 16152',
          'locationLink': 'https://maps.app.goo.gl/nVChXR9RdhdYGSWa6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMLDbWCCDUpgBouagGF6Et68jt8k_R2uRbu1zbQ=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Vania Hospitals',
          'address': 'Jl. Siliwangi No.11, RT.01/RW.03, Sukasari, Kec. Bogor Tim., Kota Bogor, Jawa Barat 16142',
          'locationLink': 'https://maps.app.goo.gl/YfoLLocL91e5Jtob9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP5g6VYM0mW3gHFiFGq5BoHAa-si6OuGHNKT59e=w408-h305-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Cirebon',
      'hospitals': [
        {
          'name': 'Siloam Putera Bahagia Hospitals',
          'address': 'Jl. Ciremai Raya No.114, Kecapi, Kec. Harjamukti, Kota Cirebon, Jawa Barat 45142',
          'locationLink': 'https://maps.app.goo.gl/8CRXUJrAQDKxXuQf9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOCm0jEUTlFKDuAdUCZYNWQ-Dx2vg-QbETGUrHM=w408-h328-k-no',
          'description': '',
        },
        {
          'name': 'Permata Hospitals',
          'address': 'Jl. Tuparev No.117, Pilangsari, Kec. Kedawung, Kabupaten Cirebon, Jawa Barat 45153',
          'locationLink': 'https://maps.app.goo.gl/vNkMAnu7TPEoVETe9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNGxclo8aSaPodCAyr0P3P6eAXt09nU8RsySJIE=w408-h271-k-no',
          'description': '',
        },
        {
          'name': 'Sumber Waras Hospital',
          'address': 'Jl. Urip Sumoharjo No.5, Ciwaringin, Kec. Ciwaringin, Kabupaten Cirebon, Jawa Barat 45167',
          'locationLink': 'https://maps.app.goo.gl/6Eeqc8JB89xZBHJB9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM3dhV1NUuX6jwjT3oARVZHdVL94SYdiD0iXnTY=w408-h269-k-no',
          'description': '',
        },
        {
          'name': 'Mitra Plumbon Hospital',
          'address': 'Jl. Raya Plumbon - Palimanan No.Km.11, Gombang, Kec. Plumbon, Kabupaten Cirebon, Jawa Barat 45155',
          'locationLink': 'https://maps.app.goo.gl/eoh3oGWxWpn18QaV6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOpBQYYJ5QDRper8mf9OrwaW6o7aeoJ2lbzgm8K=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Pertamina Hospital',
          'address': 'Jl. Patra Raya Klayan Cirebon No.1, Klayan, Kec. Gunungjati, Kabupaten Cirebon, Jawa Barat 45151',
          'locationLink': 'https://maps.app.goo.gl/6SNRKWA1iwWpoWBG6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNEHvoyV-CUVgNl-Wif5XL2TcFBvfaDEyl6-59D=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'General Hospital Muhammadiyah',
          'address': 'Jl. Dr. Wahidin Sudirohusodo Sudiro Husodo No.79, Sukapura, Kec. Kejaksan, Kota Cirebon, Jawa Barat 45122',
          'locationLink': 'https://maps.app.goo.gl/mDyxSNQSieerG7Jh8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMY9pUkVdZqaRUGb1qRdJEk8HNTaobN_wEnw5q1=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Sumber Hurip Hospital',
          'address': 'Jl. R.Dewi Sartika No.15, Tukmudal, Kec. Sumber, Kabupaten Cirebon, Jawa Barat 45611',
          'locationLink': 'https://maps.app.goo.gl/2x14HT9JwQWffunW9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOq7-nWStoD4-SGpbDvckj2K-vHZrx7TVCyVwWe=w960-h240-k-no',
          'description': '',
        },
        {
          'name': 'Cahaya Bunda Hospital',
          'address': 'Jl. Perjuangan No.8, Sunyaragi, Kec. Kesambi, Kota Cirebon, Jawa Barat 45131',
          'locationLink': 'https://maps.app.goo.gl/72NNJwpgkYt4LUmW7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP4TUjAzcQqlCxRz5bTf3IaUJC-_q2DO66PmaEe=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Hasna Medika Cirebon Heart Hospital',
          'address': 'Jl. Raden Gilap No.8, Palimanan Tim., Kec. Palimanan, Kabupaten Cirebon, Jawa Barat 45161',
          'locationLink': 'https://maps.app.goo.gl/v1EkiCg5fnwaAs3n6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOv4jnSnWUO36jIU9TtJVYvYAq-weh51nkbOV6G=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Sidawangi Hospital',
          'address': 'Jl. Pangeran Kejaksan, Sidawangi, Kec. Sumber, Kabupaten Cirebon, Jawa Barat 45558',
          'locationLink': 'https://maps.app.goo.gl/1tQsjsX8pcWShFRE6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPPbqWjP1TOWZB2k4t7vHaXWPJT9xb9C7E2Bkmd=w408-h272-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Depok',
      'hospitals': [
        {
          'name': 'Mitra Keluarga Hospital',
          'address': 'Jl. Margonda Raya, Depok, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16424',
          'locationLink': 'https://maps.app.goo.gl/WeNaxoYZbooUjoAg7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOwSWbhurUOdcWkx4qed9qOCF5hFaDTJvvIZLJ6=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Bunda Margonda Hospital',
          'address': 'Jl. Margonda No.28, Pondok Cina, Kecamatan Beji, Kota Depok, Jawa Barat 16424',
          'locationLink': 'https://maps.app.goo.gl/xUHbae6TR9qjjHpJ6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOdNHH97NIeVDjQ54LhnUYanu6b41vJ6diQ_6b6=w408-h288-k-no',
          'description': '',
        },
        {
          'name': 'Anugerah Sehat Afiat Hospital',
          'address': 'Jl. Raya Tapos No.1, Cimpaeun, Kec. Tapos, Kota Depok, Jawa Barat 16459',
          'locationLink': 'https://maps.app.goo.gl/E5Mfhfsunc3ZAFtx5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOkz5q1ckovWGzOt5e6IMQmMGM373zdagmrZeTP=w423-h240-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital',
          'address': 'Jl. Siliwangi No.50, Depok, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16436',
          'locationLink': 'https://maps.app.goo.gl/c1H48usCZFnXyK8e8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO8LZZGXJ7e7EakTLhT7pEHJlEYUuwJUC0naaIX=w425-h240-k-no',
          'description': '',
        },
        {
          'name': 'Simpangan Hospital',
          'address': 'Jl. Raya Jakarta-Bogor No.36, Sukamaju, Kec. Cilodong, Kota Depok, Jawa Barat 16415',
          'locationLink': 'https://maps.app.goo.gl/1Dow1yyCPysWdDtp8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMrm0N-uQN1w07L6wfViHWiXZ_z1X79Y36Gm2ih=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Sentra Medika Hospital',
          'address': 'Jl. Raya Jakarta-Bogor No.KM. 33, Cisalak, Kec. Sukmajaya, Kota Depok, Jawa Barat 16416',
          'locationLink': 'https://maps.app.goo.gl/ApD4dy7KqWstrGL86',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMo1zZ1LVXsAPIItHhWHfOvDOSab2w3Qo0Tq0Hk=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Universitas Indonesia Hospital',
          'address': 'Jl. Prof. DR. Bahder Djohan, Pondok Cina, Kecamatan Beji, Kota Depok, Jawa Barat 16424',
          'locationLink': 'https://maps.app.goo.gl/dkfm1sGYioPzeyhF8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMY571DEmB8do2oJrBolITm40Bi2cFUAC-6yRtX=w408-h408-k-no',
          'description': '',
        },
        {
          'name': 'Meilia Hospital',
          'address': 'Jl. Alternatif Cibubur No.1, Harjamukti, Kec. Cimanggis, Kota Depok, Jawa Barat 16454',
          'locationLink': 'https://maps.app.goo.gl/PuVhEzgmgWtRaBGp7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMd9b_zKwME3EINWfXppRRjiEI8U4qfULsj5pp_=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Puri Cinere Hospital',
          'address': 'Jl. Maribaya No.1, Pangkalan Jati, Kec. Cinere, Kota Depok, Jawa Barat 16514',
          'locationLink': 'https://maps.app.goo.gl/VzBv3aLJZCNFuCTCA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMuQdy1ZPduewTsnjxXfYCPlKBLiva5afM-6iEr=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Anak Negeri Hospital',
          'address': 'Jl. Raya Keadilan Jl. Kp. Rw. Denok, RT.4/RW.12, Rangkapan Jaya Baru, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16434',
          'locationLink': 'https://maps.app.goo.gl/k7mdHn8xyM8WAmSx5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP7tzjVXNwpsLdJKo_U18hEgzftyLzL8gBb3mHn=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Siloam Heart Diagram Hospital',
          'address': 'Jl. Cinere Raya No.19, Pangkalan Jati, Kec. Cinere, Kota Depok, Jawa Barat 16514',
          'locationLink': 'https://maps.app.goo.gl/kKsGoZbdAHiqyFZe9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipORF0Q9O4dqFBg6LdFVYpQxQe83le7yHTkR10os=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Citra Arafiq Sawangan Hospital',
          'address': 'Jl. Kemang Dalam 2, RT.003/RW.004, Duren Seribu, Bojong sari, Kota Depok, Jawa Barat 16518',
          'locationLink': 'https://maps.app.goo.gl/g9rgkRyPPhk2Nfnu8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOIFAJ7IInB42NYTVv-VcF7faAtXiPazEUFKrMU=w408-h545-k-no',
          'description': '',
        },
        {
          'name': 'Brawijaya Hospital',
          'address': 'Jl. Raya Parung - Ciputat, Bojongsari Baru, Kec. Bojongsari, Kota Depok, Jawa Barat 16516',
          'locationLink': 'https://maps.app.goo.gl/c3dEaoyJ6ZU2vxL2A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNfeEa55-7GR2vN1lK54Hz46EerYgpbouRb3Fno=w408-h272-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Sukabumi',
      'hospitals': [
        {
          'name': 'R. Syamsudin, SH Hospital',
          'address': 'Jl. Rumah Sakit No.1, Cikole, Kec. Cikole, Kota Sukabumi, Jawa Barat 43113',
          'locationLink': 'https://maps.app.goo.gl/7NcQeUzKjcEq9auq7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP0gP8cS1tOOOivT6AfdCASnwlMJ-pSOXOoRBXP=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital',
          'address': 'Jl. Raya Sukaraja, RT.003/RW.003, Sukaraja, Kec. Sukaraja, Kabupaten Sukabumi, Jawa Barat 43192',
          'locationLink': 'https://maps.app.goo.gl/g2c6qLpMiM8BHaCt6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPjvi7VLLGHHyuuseCxTFYCq6_WcII8gNnJb9sC=w408-h408-k-no',
          'description': '',
        },
        {
          'name': 'Primaya Hospital',
          'address': 'Jl. R.A. Kosasih No.45, Sukaraja, Kec. Sukaraja, Kabupaten Sukabumi, Jawa Barat 43192',
          'locationLink': 'https://maps.app.goo.gl/aCmjeWDfiPGF2Qac9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPBtb9FZkyqSSssD_RrYrM9-nn2n8DOvVy0P-YX=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Al Mulk Hospital',
          'address': 'Jl. Pelabuhan II, Lembursitu, Kec. Lembursitu, Kota Sukabumi, Jawa Barat 43169',
          'locationLink': 'https://maps.app.goo.gl/PoStmgy1tRtvnPQQA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMiMx51AnQvoyENq7M66pxD0nWzgK8ScXhPaYCa=w520-h240-k-no',
          'description': '',
        },
        {
          'name': 'Assyifa Islamic Hospital',
          'address': 'Jl. Sudirman No.3, Gunungpuyuh, Kec. Gunungpuyuh, Kota Sukabumi, Jawa Barat 43123',
          'locationLink': 'https://maps.app.goo.gl/g7HAudwupUmTfHnY9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN7PbWIxgyfUaVKGHICOp_MJUKfaOwq8MOvietS=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Betha Medika Hospital',
          'address': 'Jl. Raya Cisaat No.595, Cibatu, Kec. Cisaat, Kabupaten Sukabumi, Jawa Barat 43152',
          'locationLink': 'https://maps.app.goo.gl/dJzqiW5iz241EyjN6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMXXXvda_GMuyJQSeio6Lsb5DRcZrPNtSIgaiSV=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Bhayangkara Setukpa Hospital',
          'address': 'Jl. Aminta Azmali Jl. Mohtar Obing Trip No.59A, Sriwidari, Kec. Gunungpuyuh, Kota Sukabumi, Jawa Barat 43121',
          'locationLink': 'https://maps.app.goo.gl/GdiYnzBPVWmieRjR7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN2sC4IKJ848DpUPTCQKjCFjjlgI5uckVMjMVKW=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Tasikmalaya',
      'hospitals': [
        {
          'name': 'Doctor Soekardjo State Regional Hospital',
          'address': 'Jl. Rumah Sakit No.33, Empangsari, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46113',
          'locationLink': 'https://maps.app.goo.gl/qb2BzEmabZSwieZn7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNi5V7lepCkDzMUxfoY3Sio3ERO-DWixNs4zYc=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Islam Hj. Siti Muniroh Hospital',
          'address': 'Jl. Tamansari No.228, Mulyasari, Kec. Tamansari, Kab. Tasikmalaya, Jawa Barat 46196',
          'locationLink': 'https://maps.app.goo.gl/xC2wxH52J9wFdgDy9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPHNzjjgHyI37nF1_C3lZReJIvejUI7r_NEU5ib=w408-h725-k-no',
          'description': '',
        },
        {
          'name': 'Prasetya Bunda Hospital',
          'address': 'Jl. Ir. H. Juanda No.1, Panyingkiran, Kec. Indihiang, Kab. Tasikmalaya, Jawa Barat 46211',
          'locationLink': 'https://maps.app.goo.gl/pUbhoyTGcroHaYtf9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNdIuZ3fICzgLHU1kWdNtjuvSu-IFuZ-aFHnIFZ=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Permata Bunda Hospital',
          'address': 'Raya, Jl. Brigjend Wasita Kusumah No.1, Sukamajukidul, Kec. Indihiang, Kab. Tasikmalaya, Jawa Barat 46151',
          'locationLink': 'https://maps.app.goo.gl/dVodAZio8yVzG9N26',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNL06IxPsIfXkJN2svJOjY1EATuSZsnrfrguQ9f=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Jasa Kartini Hospital',
          'address': 'Jl. Otto Iskandardinata No.15, Empangsari, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46131',
          'locationLink': 'https://maps.app.goo.gl/Q3QwfhkweHLo6E9g8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMo2JsV9T9QmdQ23nzjHtH_I8ycWF60WyIvjeW9=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Dr. Hj. Karmini E.H Hospital',
          'address': 'Jl. Rumah Sakit No.56-58, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46113',
          'locationLink': 'https://maps.app.goo.gl/ovRXtk9YcqrLh3Wc7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNxpzncjANMmQdo7YcSzJ7LJrNZtN9STJVcxYqa=w437-h240-k-no',
          'description': '',
        },
        {
          'name': 'JHC Tasikmalaya Hospital',
          'address': 'Jl. Mohamad Hatta No.155, RT.01/RW.020, Sukamanah, Kec. Cipedes, Kab. Tasikmalaya, Jawa Barat 46131',
          'locationLink': 'https://maps.app.goo.gl/dqeM5xiFJ4ijFL2Q6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOasz6a09F9QAs82evxba3HTZCUZyOOFg6H-pWd=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital',
          'address': 'Jl. Ir. H. Juanda No.7A, RT.03/RW.14, Cipedes, Kec. Cipedes, Kab. Tasikmalaya, Jawa Barat 46133',
          'locationLink': 'https://maps.app.goo.gl/TZt9jBCBVFpaidGY8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMZIHoMMlxV-fKwOsRPnrQCP3dyIPb41XhERWLT=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Singaparna Medika Citrautama Hospital',
          'address': 'Jl. Raya Rancamaya, Cikunten, Kec. Singaparna, Kabupaten Tasikmalaya, Jawa Barat 46412',
          'locationLink': 'https://maps.app.goo.gl/19PH8ZXcEPe5fbMu7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNQYBGlpgKBTEIdT3op-GsGI-7lIaLiVNPZw34o=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Women & Children Hospital Widaningsih',
          'address': 'Jl. Sutisna Senjaya No.130, Cikalang, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46113',
          'locationLink': 'https://maps.app.goo.gl/PauzHQJafThxUpWA7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOmvsJ6XBRUWO9uWdvYT1vGoErqRKBDHgTUDxvU=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Galunggung TNI AD Hospital',
          'address': 'M69G+3HX, Jl. Tanuwijaya, Empangsari, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46113',
          'locationLink': 'https://maps.app.goo.gl/iYv1S5vGKAEKccnU7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPeSaF8mT-GDNJLRnBPjGNRXrECFWeKB5r9LqsV=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Surabaya',
      'hospitals': [
        {
          'name': 'Royal Hospital',
          'address': 'Jl. Rungkut Industri I No.1, Kendangsari, Kec. Tenggilis Mejoyo, Surabaya, Jawa Timur 60292',
          'locationLink': 'https://maps.app.goo.gl/7yZk5zPFJo54KPWr5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNgnUpTteb8zYRTVEQZsA0xSni8nD-Qi1UVcbTK=w408-h271-k-no',
          'description': '',
        },
        {
          'name': 'Husada Utama Hospital',
          'address': 'Jl. Prof. DR. Moestopo No.31-35, Pacar Keling, Kec. Tambaksari, Surabaya, Jawa Timur 60131',
          'locationLink': 'https://maps.app.goo.gl/ZSFFH2uhT8nL3Wte9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPdvRBY5Yj4HBHF3M9sNAECQsLGMBpDFUv53wXJ=w408-h273-k-no',
          'description': '',
        },
        {
          'name': 'Islamic Hospital',
          'address': 'Jl. Achmad Yani No.2-4, Wonokromo, Kec. Wonokromo, Surabaya, Jawa Timur 60243',
          'locationLink': 'https://maps.app.goo.gl/jokcyXWJXkfdWyqRA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNLtZukLnosFOYLWw-ZzuMcHqgvvCb9q4lSvU_h=w408-h271-k-no',
          'description': '',
        },
        {
          'name': 'William Booth Hospital',
          'address': 'Jl. Diponegoro No.34, Darmo, Kec. Wonokromo, Surabaya, Jawa Timur 60241',
          'locationLink': 'https://maps.app.goo.gl/b2cKTmz5pvEZwQTs6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOaikyAUMTVQvg3B5K4qjvOzwnIKtKvRWqcUA48=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Mitra Keluarga Hospital',
          'address': 'Komplek Darmo Satelit, Jl. Satelit Indah II, Tanjungsari, Kec. Sukomanunggal, Surabaya, Jawa Timur 60187',
          'locationLink': 'https://maps.app.goo.gl/Y5HQgatTkBqZNW4e6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMo8zGzpU6jtc0cLf1x9JnaCREJ0TFU1b46SQf_=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'PHC Hospital',
          'address': 'Jl. Prapat Kurung Selatan No.1, Perak Utara, Kec. Pabean Cantikan, Surabaya, Jawa Timur 60165',
          'locationLink': 'https://maps.app.goo.gl/gsLqnGxuaRgw22cZA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPlWiVk_JUzEBUNDhVYRN1tQbXTn_-rRgiEVp8q=w408-h408-k-no',
          'description': '',
        },
        {
          'name': 'Airlangga University Hospital',
          'address': 'Jl. Dharmahusada Permai, Mulyorejo, Kec. Mulyorejo, Surabaya, Jawa Timur 60115',
          'locationLink': 'https://maps.app.goo.gl/6CH9xvw1Em34tDEfA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMovLCHulImEQPsqo-4nHgvZyTmqitgvN2lvrfa=w411-h240-k-no',
          'description': '',
        },
        {
          'name': 'Gotong Royong Hospital',
          'address': 'Jl. Medokan Semampir Indah No.97, Medokan Semampir, Kec. Sukolilo, Surabaya, Jawa Timur 60119',
          'locationLink': 'https://maps.app.goo.gl/9eejzaYLx4WFx4aV7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM1WMHR9n-zM5ci8QaILR-c7MlwYh90UrTd5Gjs=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'UBAYA Hospital',
          'address': 'Jl. Raya Panjang Jiwo Permai No.87 89, Panjang Jiwo, Kec. Tenggilis Mejoyo, Surabaya, Jawa Timur 60299',
          'locationLink': 'https://maps.app.goo.gl/XrbBqj3gFXUCnKB86',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMEdU_nB6f2cMy95zVnXfEE_wQf7g4WQt7-Gga7=w472-h240-k-no',
          'description': '',
        },
        {
          'name': 'Husada Prima Hospital',
          'address': 'Jl. Karang Tembok No.39, Pegirian, Kec. Semampir, Surabaya, Jawa Timur 60153',
          'locationLink': 'https://maps.app.goo.gl/3LjRP2drXGu99AoX7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPAiGcftCiHSfSTxy45OIQJm683BKgSQUUFNk9V=w408-h394-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Malang',
      'hospitals': [
        {
          'name': 'BRIMedika Hospital',
          'address': 'Jl. Mayjend Panjaitan No.176, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113',
          'locationLink': 'https://maps.app.goo.gl/9uA6ccZ7ntrtGBLM9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOr7-B-0ti8eIcMAAb26E2rQA914-yawapk-pVM=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Lavalette General Hospital',
          'address': 'Jl. W.R. Supratman No.10, Rampal Celaket, Kec. Klojen, Kota Malang, Jawa Timur 65111',
          'locationLink': 'https://maps.app.goo.gl/W9uhUZh3HWpSFLJn8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMaiwVVxl_YW4nglq1LA4f6td-gLtBewjyTKv46=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'UNISMA islamic hospital',
          'address': 'Jalan, Jalan Mayjen Haryono No.139, Dinoyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144',
          'locationLink': 'https://maps.app.goo.gl/U652cZpazPCi5CsU7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOu7dCPdxW89UGYGZMxttbpa0YthNr6RPQK0Ayf=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Dr. SAIFUL ANWAR hospital',
          'address': 'Jl. Jaksa Agung Suprapto No.2, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65112',
          'locationLink': 'https://maps.app.goo.gl/ArwkfB2kkQt2xAdN7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN-EHeCgqhLNEB3PwGpstpZPhAhlMkla162d-D5=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Persada hospital',
          'address': 'KOMPLEKS ARAYA BUSSINESS CENTER, Jl. Raden Panji Suroso KAV.II-IV, Purwodadi, Kec. Blimbing, Kota Malang, Jawa Timur 65126',
          'locationLink': 'https://maps.app.goo.gl/PqRpMWbTEmqwf6N38',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMDdqZ6SerMFKmEhzaMqleM1EuL41j4yAjaXtlg=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Brawijaya University Hospital',
          'address': 'Jl. Soekarno - Hatta, Lowokwaru, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141',
          'locationLink': 'https://maps.app.goo.gl/sjoPibqVFiQHe5L36',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipObfu1mWPcXihuT-QEws3TJX-bsDu_AJ6LrNeLx=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Melati Husada Hospital',
          'address': 'Kawi St No.32, Gading Kasri, Klojen, Malang City, East Java 65115',
          'locationLink': 'https://maps.app.goo.gl/PdJ4YN9B778HhciP6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO3YhsdchxYqOQ_qUbRWOPww5xE3QZtHvzKhITt=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Aisyiyah Islamic Hospital',
          'address': 'Jl. Sulawesi No.16, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117',
          'locationLink': 'https://maps.app.goo.gl/sgzoCb7oSkPeYm4P7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMSOZ2nG4Z0Htm6KIjJEc8xTyKaNeMKznymZODy=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital Tangkubanprahu',
          'address': 'Jl. Tangkuban Perahu No.31-33, Kauman, Kec. Klojen, Kota Malang, Jawa Timur 65119',
          'locationLink': 'https://maps.app.goo.gl/19Xtego8rgVSaq6t5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNHsmn6earJCKEsuwvpV0rk6aOZCbSlU7mywZw=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Muhammadiyah University Malang Hospital',
          'address': 'Jl. Raya Tlogomas No.45, Dusun Rambaan, Landungsari, Kec. Dau, Jawa Timur 65144',
          'locationLink': 'https://maps.app.goo.gl/wcN13Nh2C84t6sCm8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMSmooAf07jNTDutxK4X03HyRzFFGYdh4cCbVUB=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Mother & Child Hospital Puri Bunda',
          'address': 'Jl. Simpang Sulfat Utara No.60 A, Pandanwangi, Kec. Blimbing, Kota Malang, Jawa Timur 65126',
          'locationLink': 'https://maps.app.goo.gl/GsfG85dqN5naFcSG8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOCsKYxFkuf0FvKU0CaoCEWv27mCh8z66QrgdjS=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Panti Waluya Sawahan Hospital',
          'address': 'Jl. Nusakambangan No.56, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117',
          'locationLink': 'https://maps.app.goo.gl/2yKSmvAbsypeZKTi6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM-OWYxOWNOZwp-Nrwiyokolgk4tJcfguzOim98=w409-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Probolinggo',
      'hospitals': [
        {
          'name': 'RSIA Amanah',
          'address': 'Jalan Dr Moh Saleh No. 43, Sukabumi, Mayangan, Sukabumi, Mayangan, Sukabumi, Mayangan, Probolinggo City, East Java 67219',
          'locationLink': 'https://maps.app.goo.gl/5hDiUb51cYDmSNGRA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPFWWdeMt5WU0bl2uObvdHxjFwFkA-B4fpBx6c=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Ar Rozy Hospital',
          'address': 'Jl. Prof. Dr. Hamka No.KM 3 5, RW.5, Kareng Lor, Kec. Kedopok, Kota Probolinggo, Jawa Timur 67228',
          'locationLink': 'https://maps.app.goo.gl/qV8WjGNTCqDTmQhp6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMqBZCxPJN9yOvnHPU3l2k1WFsUJNOn_PFM_ehc=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Rizani Paiton Hospital',
          'address': 'Dusun Matikan, Sumberejo, Paiton, Probolinggo Regency, East Java 67291',
          'locationLink': 'https://maps.app.goo.gl/zPUBeo1YPXgZ5Qgr6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMN9ST_5_9Zw-mvb3B5_B9uyKT7pKwR3AcyCUzF=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Kediri',
      'hospitals': [
        {
          'name': 'Ratih Hospital',
          'address': 'Jl. Penanggungan No.32, Bandar Kidul, Kec. Mojoroto, Kota Kediri, Jawa Timur 64118',
          'locationLink': 'https://maps.app.goo.gl/ffzSi6he5X48uErv9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMwBQ1fiK2lkKfIoyCCDWOwSoYk9TJTwIZnqpNr=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'KILISUCI Hospital',
          'address': 'Jl. KH Wachid Hasyim No.64, Bandar Lor, Kec. Mojoroto, Kota Kediri, Jawa Timur 64114',
          'locationLink': 'https://maps.app.goo.gl/STcRjTYw3YChLUWh9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOOO5lbU79ZLDFzjX280gGIEEUA59-F7XrqJxJ3=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Bhayangkara Hospital',
          'address': 'Jl. Kombes Pol Duryat No.17, Dandangan, Kec. Kota, Kota Kediri, Jawa Timur 64122',
          'locationLink': 'https://maps.app.goo.gl/1fGDoeG3RdoP5ZNw7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPY7tDySfjeoE3u41mof-qHurAsX7b9aFW46_4-=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Baptis Hospital',
          'address': 'Jl. Brigjend Pol. IBH Pranoto No.1, RW.7, Bangsal, Kec. Pesantren, Kota Kediri, Jawa Timur 64131',
          'locationLink': 'https://maps.app.goo.gl/WBHWYTMUqV8VcvKv9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO_BjQDHhk61whhuL3mu5RMEDkOd33FL19WAjXd=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Melinda Hospital',
          'address': 'Jl. Balowerti II No.59, Balowerti, Kec. Kota, Kota Kediri, Jawa Timur 64129',
          'locationLink': 'https://maps.app.goo.gl/cHociud4HtxX7K2P8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO-53YmI_DgtX3w_gfDp0McpBWfj2_lhc4Oq2z0=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Simpang Lima Gumul Hospital',
          'address': 'Jalan Galuh Candrakirana, Tugurejo, Kec. Ngasem, Kabupaten Kediri, Jawa Timur 64182',
          'locationLink': 'https://maps.app.goo.gl/tGnnh2sVCijiums29',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNVVSlTzGywtbflRgXNYz89mm88OIemMCa08gCN=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Maternity Hospital NIRMALA',
          'address': 'Jl. Jaksa Agung Suprapto, Mojoroto, Kec. Mojoroto, Kota Kediri, Jawa Timur 64112',
          'locationLink': 'https://maps.app.goo.gl/SXUi9ndxTxV8gH7Q9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP8nm_5ya7Y5bBWmhXioRGoGhzh3vYLCjPvJlum=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Surya Melati Hospital',
          'address': 'Jl. Ngadiluwih Wates No.KM.10, Ngletih Timur, Ngletih, Kec. Kandat, Kabupaten Kediri, Jawa Timur 64173',
          'locationLink': 'https://maps.app.goo.gl/CGXZXaCAUBTzuFqf9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMFK6VbbLkASAeN1nLgrUlwrMu3g_7fdzzqmQrb=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Muhammadiyah Siti Khodijah Hospital',
          'address': 'Jl. Dr. Sutomo No.322, Sukorejo, Kec. Gurah, Kabupaten Kediri, Jawa Timur 64181',
          'locationLink': 'https://maps.app.goo.gl/1P5WWR86hGeC3oxz9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOk6-RxAmWz6k5Yj-OKKx1SXiGtzgVayLWlzOMX=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Amelia Hospital',
          'address': 'Jl. Pahlawan Kusuma Bangsa No.25A, Puhrejo, Tulungrejo, Kec. Pare, Kabupaten Kediri, Jawa Timur 64212',
          'locationLink': 'https://maps.app.goo.gl/Xzn4V7yk29HtzKRX6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOb9TRK5K92R9PTlmYTDOo9WuBCYlsIsSy25brm=w427-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Bitar',
      'hospitals': [
        {
          'name': 'Mardi Waluyo Hospital',
          'address': 'Jl. Kalimantan No.113, Karangtengah, Kec. Sananwetan, Kota Blitar, Jawa Timur 66137',
          'locationLink': 'https://maps.app.goo.gl/zuRadoB3M9JkE5mQ7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP7a6SwYIND6pYy9blRqkTCIRCUUA5PUOFSEUZq=w425-h240-k-no',
          'description': '',
        },
        {
          'name': 'Aminah Hospital',
          'address': 'Jl. Veteran No.39, Kepanjen Kidul, Kec. Kepanjenkidul, Kota Blitar, Jawa Timur 66117',
          'locationLink': 'https://maps.app.goo.gl/AFMEfNkdkQAFSqMk6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN1qvhnqCy4El2XQPrKmus_oPyVAVKIBUJn3Jgd=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Islamic Hospital Aminah',
          'address': 'Jl. Kenari No.54, Plosokerep, Kec. Sananwetan, Kota Blitar, Jawa Timur 66134',
          'locationLink': 'https://maps.app.goo.gl/a7TyUyVFjLuqoYM58',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMKaJNKHOWuGXUPgmI1fCg9e177R0aGEUGDP6_4=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Budi Rahayu Hospital',
          'address': 'Jalan Jendral Ahmad Yani No.18, Kepanjen Kidul, Kec. Kepanjenkidul, Kota Blitar, Jawa Timur 66111',
          'locationLink': 'https://maps.app.goo.gl/ZPxKhMHcoRKmRM4cA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNvjN78uS-TfpBWdax7P6BZ1NU7pTy-SQDhF2Yy=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Syuhada Haji Hospital',
          'address': 'Jl. Tanjung No.158, Pakunden, Kec. Sukorejo, Kota Blitar, Jawa Timur 66122',
          'locationLink': 'https://maps.app.goo.gl/2TiY2Vq7NugDg3aeA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMySHUmpW7L5BQFX-3792e6G2Sl0gpP0dyEnmLA=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Ananda Hospital',
          'address': 'Jl. Mastrip No. 14 Srengat, (Depan Polsek Srengat), Srengat II, Srengat, Kec. Srengat, Kabupaten Blitar, Jawa Timur 66152',
          'locationLink': 'https://maps.app.goo.gl/LRdc5m6HLEGUvJXc8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipODlMVv5v7nUVDDwT28Z4eS2j-qZ1W87syJQCPn=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'SRENGAT Hospital',
          'address': 'Jl. Raya Dandong, Dandong, Kec. Srengat, Kabupaten Blitar, Jawa Timur 66152',
          'locationLink': 'https://maps.app.goo.gl/qLux5p8cd3AZ2zbt5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNBYty_p_k5qsApBJwkDPJpk9zMRX6fN_jqff3W=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Ngudi Waluyo Wlingi Hospital',
          'address': 'W898+38Q, Jl. Dokter Sucipto No.5, Beru, Kec. Wlingi, Kabupaten Blitar, Jawa Timur 66184',
          'locationLink': 'https://maps.app.goo.gl/pZQHWBGJecgJrTiY6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPZaHYk3jzhzaI-aKHeaIYSN3mjvfbTL5HGahds=w425-h240-k-no',
          'description': '',
        },
        {
          'name': 'SITI KHADIJAH Hospital',
          'address': 'Jl. Anjasmoro No.42, Kepanjen Lor, Kec. Kepanjenkidul, Kota Blitar, Jawa Timur 66117',
          'locationLink': 'https://maps.app.goo.gl/h6FJ1BMNLVbToRY78',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOUYnLIV0X_hY911pOPEjBcXyI5UzGvzeCs8c3p=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'WAVA HUSADA KESAMBEN Hospital',
          'address': 'V928+992, JL. Kesamben-Jugo.1, Kesamben, Kec. Kesamben, Kabupaten Blitar, Jawa Timur 66191',
          'locationLink': 'https://maps.app.goo.gl/9S6nEim3nZndHSYr7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPsE4T56TxmVyEhi1conAK0_ckvR2XhtfBIQV_7=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Madiun',
      'hospitals': [
        {
          'name': 'Dr.Soedono Hospital',
          'address': 'Jl. Dr. Sutomo No.59, Kartoharjo, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63117',
          'locationLink': 'https://maps.app.goo.gl/TkqMwNA5cc7TSouXA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNHbOGLk0oSKd5YVNGhjIwBWsDNLSvzBm6Ug0Ip=w408-h906-k-no',
          'description': '',
        },
        {
          'name': 'Griya Husada Hospital',
          'address': 'Jl. Mayjend Panjaitan No.22, Demangan, Kec. Taman, Kabupaten Madiun, Jawa Timur 63161',
          'locationLink': 'https://maps.app.goo.gl/kJWK2KdzUVJw1N3J9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPpG8qOWFwoysnXSttya0t2hvhfNs8s6UbpIO8=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Santa Clara Hospital',
          'address': 'Jl. Biliton No.15, Madiun Lor, Kec. Manguharjo, Kota Madiun, Jawa Timur 63122',
          'locationLink': 'https://maps.app.goo.gl/dTxdVhzFjNPWjtNz6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNk4QY4hmKheAd23XT0z88Y8ma8jWe4gZbj41fZ=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Islamic Hospital Siti Aisyah',
          'address': 'Jl. Mayjen Sungkono No.38, RW.40, Nambangan Lor, Kec. Manguharjo, Kota Madiun, Jawa Timur 63129',
          'locationLink': 'https://maps.app.goo.gl/XQbwNcbzooziUt667',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNNOo_dSe4HC5epFDTnUKrOrgERPqSRq83N5Jb5=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital',
          'address': 'Jl. Sido Makmur Jl. Ring Road Barat, Manguharjo, Kec. Manguharjo, Kota Madiun, Jawa Timur 63127',
          'locationLink': 'https://maps.app.goo.gl/TcYjgpX2N1SKtfHu9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOotT41DKyCrG9QS8mUXwqABcPsuiCwWHiP0p7s=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Paviliun Merpati Hospital',
          'address': 'Jl. Bali No.36, Kartoharjo, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63117',
          'locationLink': 'https://maps.app.goo.gl/ecGVHied6ZsZPeoP7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOPNbaB5S3QSB71LwxIs-lyJcFNQTaBHEdcWt91=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Dungus Hospital',
          'address': '8J58+QVG, Jl. Raya Dungus, Ngebrak, Wungu, Kec. Wungu, Kabupaten Madiun, Jawa Timur 63181',
          'locationLink': 'https://maps.app.goo.gl/YzohkftXkxhppLu97',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNn98Td3yeAgzgr-CdEK2fjAJHYuunJyckIp4k-=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Caruban Hospital',
          'address': 'Jl. Ahmad Yani No.KM 2, Caruban, Ngampel, Kec. Mejayan, Kabupaten Madiun, Jawa Timur 63153',
          'locationLink': 'https://maps.app.goo.gl/xeJTVxYtkzKBrjxM8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOXfBRx6iHCQ2vLqNs1wsas_mcBZ-TL3Mlon5Cg=w424-h240-k-no',
          'description': '',
        },
        {
          'name': 'Mediska Hospital',
          'address': 'Jl. Yos Sudarso No.125, Madiun Lor, Kec. Manguharjo, Kota Madiun, Jawa Timur 63122',
          'locationLink': 'https://maps.app.goo.gl/aBLhX7Hs54UHaLcB7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNUXKfGkStqfrmrLiIRWlZbcKT1MvZoyrgiSeeb=w408-h326-k-no',
          'description': '',
        },
        {
          'name': 'RSPM Hospital',
          'address': 'Jl. Yos Sudarso No.108, Madiun Lor, Kec. Manguharjo, Kota Madiun, Jawa Timur 63122',
          'locationLink': 'https://maps.app.goo.gl/fa1ZELSQAf6685eM9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPINAPjkHxxhqOETLloKmRq9qJjiC8738pgzbS0=w408-h276-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Mojokerto',
      'hospitals': [
        {
          'name': 'Dr.Wahidin Sudiro Husodo Hospital',
          'address': 'Jl. Surodinawan No.170, Mergelo, Surodinawan, Kec. Prajurit Kulon, Mojokerto, JaTim 61328',
          'locationLink': 'https://maps.app.goo.gl/acUorLXXcXYFuHEGA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNSe569jBKXpOXBMjxm7NkW81nAfoua6Q2E7wUJ=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Hasanah Muhammadiyah Hospital',
          'address': 'Jl. HOS. Cokro Aminoto No.26 - 28, Mergelo, Jagalan, Kranggan, Kota Mojokerto, Jawa Timur 61313',
          'locationLink': 'https://maps.app.goo.gl/XJSjqMpEhG6X98nX6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOfhuQ6yjQuHlKP-twxnHi0PsliphiR732hximI=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'KAMAR MEDIKA Empunala Hospital',
          'address': 'Jl. Empunala No.351, Mergelo, Kedundung, Kec. Magersari, Kota Mojokerto, Jawa Timur 61316',
          'locationLink': 'https://maps.app.goo.gl/9zr1ZSavBeVXepGM8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPznCDirRf9_agzTs0_rnuc3XUIM7QnGfrQibEe=w532-h240-k-no',
          'description': '',
        },
        {
          'name': 'Sido Waras Hospital',
          'address': 'Jl. Raya Pasar Sawahan, Sumber Bendo, Sidomulyo, Kec. Bangsal, Kabupaten Mojokerto, Jawa Timur 61381',
          'locationLink': 'https://maps.app.goo.gl/EWLawYadWoiBdsre8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNZGC6HqXpp5y2Fx9ZpaRJw6MEzR_AsAjHJWFIL=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Mawaddah Medika Hospital',
          'address': 'Jl. Raya Ngijingan Dsn, Ngijingan, Purwojati, Kec. Ngoro, Kabupaten Mojokerto, Jawa Timur 61385',
          'locationLink': 'https://maps.app.goo.gl/bAAuTVqqeGeXP7FJ8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM3uhNFNmKYRXC0KIrQuRvDIeClOohVXcSek2ob=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Hadiono Singgih Hospital',
          'address': 'JL. R Wijaya No.58, Mojokerto - East Java, Mergelo, Kranggan, Prajurit Kulon, Mojokerto City, East Java 61321',
          'locationLink': 'https://maps.app.goo.gl/7qhgtFPKuGGcsQZ18',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMMj1pVKFP_xgn8gsP3FKJ48AarupRt656eiBiB=w498-h240-k-no',
          'description': '',
        },
        {
          'name': 'SUMBERGLAGAH Hospital',
          'address': 'Dusun Sumberglagah Pacet, Ngasem, Tanjungkenongo, Kec. Pacet, Kabupaten Mojokerto, Jawa Timur 61374',
          'locationLink': 'https://maps.app.goo.gl/oD4V8MDLiw6dvUMz8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO69YWEIQD3fgI_NiveC0EGEqAiMBi_1g8LnsIJ=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Prof. Dr. Soekandar Hospital',
          'address': 'Jl. Hayam Wuruk No.25, Rw. II, Wonokusumo, Kec. Mojosari, Kabupaten Mojokerto, Jawa Timur 61382',
          'locationLink': 'https://maps.app.goo.gl/ycUnRS8zFZRPkRaHA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipONRX84RMYOOrlp6UEo9WeWcuxsUaHCcqzPYlit=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Sayang Bunda Hospital',
          'address': 'Jl. Gajah Mada No.45, Mergelo, Gedongan, Kec. Magersari, Kota Mojokerto, Jawa Timur 61319',
          'locationLink': 'https://maps.app.goo.gl/Yyhz77DXJtYfkYYr7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPcUy5EHrXshQuTd4gm5sLuf7NGZGJM-4B-kjdZ=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Pasuruan',
      'hospitals': [
        {
          'name': 'Regional General Hospital Dr. R. Soedarsono',
          'address': 'Jl. Dokter Wahidin Sudiro Husodo No.1-4, Purutrejo, Kec. Purworejo, Kota Pasuruan, Jawa Timur 67117',
          'locationLink': 'https://maps.app.goo.gl/qPVN7MPyAUAdPShc6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM3DYGnMh7WHSBi7qcuW5kPmUhJN9WWAZHnNSQb=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'GRAHA SEHAT MEDIKA Hospital',
          'address': 'Jl. Raya, Karangketug, Gadingrejo, Pasuruan City, East Java 67135',
          'locationLink': 'https://maps.app.goo.gl/M25fR7pvKyY6ha3G9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOxGgPFGQg1UfAQ2mCZYAvkI9QKmZ2eGD2lMVDz=w408-h725-k-no',
          'description': '',
        },
        {
          'name': 'Kodya Dati II Hospital',
          'address': 'JL. Dr. Wahidin Sudirohusodo, No. 4, Purutrejo, Kec. Purworejo, Kota Pasuruan, Jawa Timur 67117',
          'locationLink': 'https://maps.app.goo.gl/x9gpzvx6hXourkVQ6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM2pqkF7B9WTk8x8VvFa-VLQ5sMOJFGZ1RzwsCQ=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Batu ',
      'hospitals': [
        {
          'name': 'Karsa Husada Batu Hospital',
          'address': 'Jl. Ahmad Yani No.11-13, Ngaglik, Kec. Batu, Kota Batu, Jawa Timur 65311',
          'locationLink': 'https://maps.app.goo.gl/R2H76KrA8uRpgxJRA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNaZExKdCE3Nw0XRtECvnouUahC8F5v3T_JRcUT=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Baptis Batu Hospital',
          'address': 'Jl. Raya P. Sudirman No.33, Tlekung, Kec. Junrejo, Kota Batu, Jawa Timur 65314',
          'locationLink': 'https://maps.app.goo.gl/NBxUr1dktigKUzbR7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOw2Bm0tQqVteKt1X1CAqinyOHL_FbYABUEgvak=w408-h576-k-no',
          'description': '',
        },
        {
          'name': 'Dr. Etty Asharto Hospital',
          'address': 'Jl. Sajid No.44, Pesanggrahan, Kec. Batu, Kota Batu, Jawa Timur 65313',
          'locationLink': 'https://maps.app.goo.gl/eavkr3Y5uABws5Pw6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOm_hSbm5ZopJ_O8iNcyu-q6E_3j-kjwgLwTEX7=w408-h270-k-no',
          'description': '',
        },
        {
          'name': 'Mother & Child Hospital IPHI',
          'address': 'Jl. Agus Salim No.35, Sisir, Kec. Batu, Kota Batu, Jawa Timur 65314',
          'locationLink': 'https://maps.app.goo.gl/ououPcNtvjgw1wNt8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMBU5pAPsU8uh3NDbZs_fyf9oI1mJhUNP6dOj7w=w408-h544-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Banda Aceh',
      'hospitals': [
        {
          'name': 'Kesdam Iskandar Muda Hospital',
          'address': 'H83F+VRV, Jl. T. Angkasa Bendahara, Kuta Alam, Kec. Kuta Alam, Kota Banda Aceh, Aceh 24415',
          'locationLink': 'https://maps.app.goo.gl/XyX5Q9Zp3rMkEt5S7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOEemG4_y9IbKZC3wgoIJmiruU5uFU6gVoRgulp=w408-h408-k-no',
          'description': '',
        },
        {
          'name': 'Khusus Bedah Sehat Selamat Sejahtera Hospital',
          'address': 'Pango Deah, Ulee Kareng, Banda Aceh City, Aceh 23116',
          'locationLink': 'https://maps.app.goo.gl/VsrncVWGUKQpUkRy7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOToDSW9J20P2nRT2DT8Bj4G1mZRUGPETOT0OlF=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'MEUTIA Hospital',
          'address': 'Jl. Cut Mutia No.55, Kp. Baru, Kec. Baiturrahman, Kota Banda Aceh, Aceh 23116',
          'locationLink': 'https://maps.app.goo.gl/23FPpqLvCJN1UKACA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOAAQfTHWoflab6_HdBeNle-VTSi3poYk3w3Q8e=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Meuraxa Hospital',
          'address': 'Jl. Soekarno - Hatta No.1, Mibo, Kec. Banda Raya, Kota Banda Aceh, Aceh 23231',
          'locationLink': 'https://maps.app.goo.gl/3VvmdCPLkwwNKBA39',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNN5d8P0qaLyl51du_LkXzSKdH-z-5T02JV4Lte=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Cempaka Az-Zahra Hospital',
          'address': 'Mulia, Kuta Alam, Banda Aceh City, Aceh 23123',
          'locationLink': 'https://maps.app.goo.gl/TdRVGFr8WQs2QZPR7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPvQXqiVszKkxvWT9vDK02cKkeAEaXlKtszOzvO=w408-h612-k-no',
          'description': '',
        },
        {
          'name': 'Harapan Bunda Hospital',
          'address': 'Jl. Teuku Umar No.181-211, Seutui, Kec. Baiturrahman, Kota Banda Aceh, Aceh 23243',
          'locationLink': 'https://maps.app.goo.gl/DbUjE81LiFAJn1EYA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOJZB1PRmxdXFl5ErsR3-11e-1gt9kqse_Zr3SE=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'UZA Hospital',
          'address': 'H87P+RVQ, Jl. Tgk. Moh. Daud Beureueh, Bandar Baru, Kec. Kuta Alam, Kota Banda Aceh, Aceh 24415',
          'locationLink': 'https://maps.app.goo.gl/He4Myv7WUsfvQrYU7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMOg8LCaSahIaEF-VX-NkGj0PIuy3gDGYGMwMrS=w455-h240-k-no',
          'description': '',
        },
        {
          'name': 'Cempaka Lima Hospital',
          'address': 'Jl. Politeknik Aceh No.23, Beurawe, Kec. Kuta Alam, Kota Banda Aceh, Aceh 23127',
          'locationLink': 'https://maps.app.goo.gl/RrpuXNAczu25EM78A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPreZE-tNLvht2vroY-JF8qPxx8JL2rnUEulgP_=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital',
          'address': 'Meunasah Manyet, Ingin Jaya, Aceh Besar Regency, Aceh',
          'locationLink': 'https://maps.app.goo.gl/1Ewc1cirPrqQM9nz9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNMM2Qt2iD3TP3Am9qXWWdSc1p1mIrNHx54AJeN=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'USK Hospital',
          'address': 'H826+8VR, Jl.Prof majid Lrg. Ibrahim, Punge Jurong, Meuraxa, Banda Aceh City, Aceh 23116',
          'locationLink': 'https://maps.app.goo.gl/GJwLGTgnYn2YvzdV8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOX7BIEUFBY3wUVa7j8pBl3wMNUcWZooV2eBLw9=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Langsa',
      'hospitals': [
        {
          'name': 'General Hospital',
          'address': 'Jl. Jenderal Ahmad Yani No.1, Gampong Jawa, Kec. Langsa Kota, Kota Langsa, Aceh 24416',
          'locationLink': 'https://maps.app.goo.gl/6266eHpcNCJu3mhs8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMfu-XBEQbCm8otiB-G3rumYkGsl5iEWQ1Tfaoo=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Langsa Specialist Clinic',
          'address': 'Jl. Jenderal Ahmad Yani No.28, Birem Puntong, Kec. Langsa Baro, Kota Langsa, Aceh 24375',
          'locationLink': 'https://maps.app.goo.gl/DDFrCBTGrXFdA9G98',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPDxeRHmzJTLdN6oFUuvcs3Vl6lL8PoLiM7cc8=w408-h372-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Lhokseumawe',
      'hospitals': [
        {
          'name': 'Kesrem Military Hospital',
          'address': '55J2+X3G, Kampung Jawa Lama, Banda Sakti, Lhokseumawe City, Aceh',
          'locationLink': 'https://maps.app.goo.gl/8BHpHoqTg1RryCzb7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM-x_Sw3IDOp_ayxlCpvtJqnhPLTzRtKzBwgXle=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Bunda Hospital',
          'address': '54MW+877, Jl. Darussalam, Lancang Garam, Kec. Banda Sakti, Kota Lhokseumawe, Aceh',
          'locationLink': 'https://maps.app.goo.gl/VqPYrpqsuFs8p4Xg9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPNyzmQwBOFWaDM5hdtyGkC4W_q3DZE8kJQb1eH=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'General Hospital Sakinah',
          'address': 'Jl. Antara No.30, Kp. Jawa Baru, Kec. Banda Sakti, Kota Lhokseumawe, Aceh 23122',
          'locationLink': 'https://maps.app.goo.gl/yFek61MPPZP6XQtt9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOyWGfGR-erFCGthq2Cr5EGKWEtpRhoNF_oez8=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Az-Zuhra Sakinah',
          'address': 'Belakang BSI Taman Riyadhah, Jl. Ps. Inpres No.2, Lk. IV, Kec. Banda Sakti, Kota Lhokseumawe, Aceh 24352',
          'locationLink': 'https://maps.app.goo.gl/5CJHrPZ63vJqsYsm8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP1maaTbn7Gvc7r5PrU39nFRYOLQmEItYUBBfwB=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'PMI By Arun Medical Center',
          'address': 'Kampung Jawa Lama, Banda Sakti, Lhokseumawe City, Aceh',
          'locationLink': 'https://maps.app.goo.gl/gcKafZHJ9o1hiuCu5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOCg9Sq_7L6mvTL2aZ38w5848tt0CfJ-kK0nWY=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Metro Medical Center',
          'address': '54FH+JV4, Keude Cunda, Muara Dua, Lhokseumawe City, Aceh 24355',
          'locationLink': 'https://maps.app.goo.gl/6tqhiuyNpyBYTnVX6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO2Uft4RcJnpJRC7vujjl6I0Q2EYD-NnJM0B2RT=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Prima Inti Medika Hospital',
          'address': 'Jl. Singgalang No.1, Tambon Tunong, Kec. Dewantara, Kabupaten Aceh Utara, Aceh',
          'locationLink': 'https://maps.app.goo.gl/qVASmPt3HpAfhatr5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNCI0jf1bMvRQB-GSGOwH_U0utcnxC-rgcqW8ia=w408-h272-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Sabang',
      'hospitals': [
        {
          'name': 'Sabang Hospital',
          'address': 'V8W8+4CV, Jl. Teuku Umar No.26, Kuta Ateueh, Sukakarya, Kota Sabang, Aceh',
          'locationLink': 'https://maps.app.goo.gl/1wHKdbWMT7gRrCdg9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM2gYQD8JJS1mLEyPSV85jnfQvGJrS-8hASgiHu=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'RSAL Jend. Lilipory Sabang',
          'address': 'V8VG+P6C, Jl. Teuku Cik Ditiro Sabang, Kuta Ateueh, Sukakarya, Kota Sabang, Aceh 23511',
          'locationLink': 'https://maps.app.goo.gl/EoveKqVwmBA94GAB7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNalcBUuiKL9wwUdGsp1mq0Og_0GCgm_VomIihk=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Subulussalam',
      'hospitals': [
        {
          'name': 'Subulussalam Hospital',
          'address': 'Jl. Hamzah Fansuri No.118, Subulussalam Sel., Kec. Simpang Kiri, Kota Subulussalam, Aceh 24782',
          'locationLink': 'https://maps.app.goo.gl/VKpn5D3TJMP3yYVF7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOeZqwBY7CrnKbylo21KAl77KYI7H2oQjlufFIN=w408-h240-k-no-pi-0-ya180-ro0-fo100',
          'description': '',
        },
      ],
    },
    {
      'name': 'Medan',
      'hospitals': [
        {
          'name': 'Royal Prima University Hospital',
          'address': 'Jl. Ayahanda No.68A, Sei Putih Tengah, Kec. Medan Petisah, Kota Medan, Sumatera Utara 20118',
          'locationLink': 'https://maps.app.goo.gl/FpbeMWiAfDnvpnrZ8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP_dtInTTpg2FCqv8ExYONxLuyCbfpAhvCxrTG1=w408-h272-k-no',
          'description': '',
        },
        {
          'name': 'Columbia Asia Hospital Medan',
          'address': 'Jl. Listrik No.2A, Petisah Tengah, Kec. Medan Petisah, Kota Medan, Sumatera Utara 20112',
          'locationLink': 'https://maps.app.goo.gl/JmqahQMahjSYVYPW7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOE7i8bkX7xH91m90EQQMum65hGsuwRcvC5nk1W=w408-h271-k-no',
          'description': '',
        },
        {
          'name': 'MITRA SEJATI Hospital',
          'address': 'Jl. Jenderal Besar A.H. Nasution No.7, Pangkalan Masyhur, Kec. Medan Johor, Kota Medan, Sumatera Utara 20219',
          'locationLink': 'https://maps.app.goo.gl/9dz67i3W9Kz3L7PW6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPvefMK_O34M8X7pzDTHQiVtSZzASKe82II0GKw=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Hermina Hospital',
          'address': 'Jl. Asrama, Sei Sikambing C. II, Kec. Medan Helvetia, Kota Medan, Sumatera Utara 20123',
          'locationLink': 'https://maps.app.goo.gl/yjTA9KDif3Jkd4Lx9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNa3t9TBHgEpX3eXg7vHq4oXKURSrgwEaxGRcs=w532-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Binjai',
      'hospitals': [
        {
          'name': 'Ratu Mas Binjai Public Hospital',
          'address': 'Jl. Tengku Amir Hamzah, Jati Makmur, Kec. Binjai Utara, Kota Binjai, Sumatera Utara',
          'locationLink': 'https://maps.app.goo.gl/3Sov42kaeLgNfS239',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNCuMoQFUUDp-bzc1CYBAN0t1nGpVeHH0R7nGoz=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Bidadari Hospital',
          'address': 'Jl. Perintis Kemerdekaan Pahlawan No.174 A, Kebun Lada, Kec. Binjai Utara, Kota Binjai, Sumatera Utara 20746',
          'locationLink': 'https://maps.app.goo.gl/7JUqFcH4t2wYA8oQ6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOtZmBNftmGHWbdY8R4UdNIFIAmNymAADK2BdoM=w408-h273-k-no',
          'description': '',
        },
        {
          'name': 'Army Hospital Binjai',
          'address': 'Jl. Bandung No.4, Rambung Bar., Kec. Binjai Sel., Kota Binjai, Sumatera Utara 20735',
          'locationLink': 'https://maps.app.goo.gl/2zzDmHaV23hrjPC86',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMhOORGPprK4S5J1UwJLssV2zZSSeZnPZHsIKl5=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Dr. RM. Djoelham Hospital',
          'address': 'Jl. Jenderal Gatot Subroto No.9, Satria, Kec. Binjai Kota, Kota Binjai, Sumatera Utara 20741',
          'locationLink': 'https://maps.app.goo.gl/nBLkm28VctFCRdQd9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPDoNnTDjxCUXFsTKsyDR3zmftQJZsq1-KaExdi=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Latersia Hospital',
          'address': 'JG4G+XC9, Sumber Karya, Binjai, Binjai City, North Sumatra 20351',
          'locationLink': 'https://maps.app.goo.gl/PQYpRtJ4u8js69Ck9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNeFWQ-_SGZjRMuTG_qWlax9uk7xleqPJWud6GM=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Umum Sylvani Hospital',
          'address': 'Jl. Perintis Kemerdekaan No.21, Pahlawan, Kec. Binjai Utara, Kota Binjai, Sumatera Utara 20748',
          'locationLink': 'https://maps.app.goo.gl/6YhrUkLQhLNnuQWTA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN6MiaPuVANa0gvzJqiz8becYu9s2LvMW8cvcDg=w408-h259-k-no',
          'description': '',
        },
        {
          'name': 'Alfuadi Hospital',
          'address': 'Jl. Jenderal Ahmad Yani No.23, Kartini, Kec. Binjai Kota, Kota Binjai, Sumatera Utara 20742',
          'locationLink': 'https://maps.app.goo.gl/wDrs9sqMFJyKqMeT7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOXWltDFyB4NDAdFGtbipVcctAXHyKmwl2KZSy-=w408-h249-k-no',
          'description': '',
        },
        {
          'name': 'Raskita Hospital',
          'address': 'Jl. Letjend Jamin Ginting, Tanah Seribu, Kec. Binjai Sel., Kota Binjai, Sumatera Utara 20726',
          'locationLink': 'https://maps.app.goo.gl/qtPasMGsPDAbcGsw6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOnK08tWEOseV7nSP4iu4tsXOQHyR2CRIWiYwoK=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Padang Sidempuan',
      'hospitals': [
        {
          'name': 'Padang Sidempuan Hospital',
          'address': '97CF+W2Q, JL. Dr. F.L. Tobing, Kantin, Kec. Padangsidimpuan Utara, Kota Padang Sidempuan, Sumatera Utara 22719',
          'locationLink': 'https://maps.app.goo.gl/DCdDPKRyQuBEkSt37',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPg-wjJ4sMit8-ETQp50YRlRCBLNdgbVgbIJj1O=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Inanta Hospital',
          'address': 'Jl. Sisingamangaraja No.85-87, Sitamiang, Kec. Padangsidimpuan Sel., Kota Padang Sidempuan, Sumatera Utara 22711',
          'locationLink': 'https://maps.app.goo.gl/gSo4E5fkXmc5PHs58',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPq1wzAt5lLewtlfs1FwGpEVVX05VZmRifBHHnf=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Metta Medika Hospital',
          'address': 'Jl. Sisingamangaraja No.113, Sitamiang, Kec. Padangsidimpuan Sel., Kota Padang Sidempuan, Sumatera Utara 22711',
          'locationLink': 'https://maps.app.goo.gl/69qD5SUwq33t1T4x5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPdmHmEino4GK3oWYU6UrnBKpyTSZh-xMjfRv7S=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Metta Medika Hospital',
          'address': 'Jl. Sisingamangaraja No.113, Sitamiang, Kec. Padangsidimpuan Sel., Kota Padang Sidempuan, Sumatera Utara 22711',
          'locationLink': 'https://maps.app.goo.gl/69qD5SUwq33t1T4x5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPdmHmEino4GK3oWYU6UrnBKpyTSZh-xMjfRv7S=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Pematangsiantar',
      'hospitals': [
        {
          'name': 'Vita Insani Hospital',
          'address': 'Jl. Merdeka No.329, Pahlawan, Kec. Siantar Tim., Kota Pematang Siantar, Sumatera Utara 21132',
          'locationLink': 'https://maps.app.goo.gl/DVzuYfMUgBix9KGHA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNKNTdMshjcr-CISAiWztD-j0XB6jRZE0Zqibzv=w600-h240-k-no',
          'description': '',
        },
        {
          'name': 'Murni Teguh Horas Insani Hospital',
          'address': 'Jl. Ke Medan No.Km.2, RW.5, Nagapitu, Kec. Siantar Martoba, Kota Pematang Siantar, Sumatera Utara 21137',
          'locationLink': 'https://maps.app.goo.gl/s2z3jQ1C1V45QELn8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNw7dxwOJfLfhQPu7JQThl52FASYU1hpH3UiN3v=w408-h269-k-no',
          'description': '',
        },
        {
          'name': 'Harapan Hospital',
          'address': 'Jl. Farel Pasaribu No.21, Sukamaju, Kec. Siantar Marihat, Kota Pematang Siantar, Sumatera Utara 21127',
          'locationLink': 'https://maps.app.goo.gl/XXktRwwVmCcmbxqL7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPwt-IX46fNTkrPZWxSNhsicp6OdpdPCps_l4nT=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Murni Teguh Hospital',
          'address': 'Jl. Medan - Pematang Siantar No.KM 4, RW.5, Naga Pita., Kec. Siantar Martoba, Kota Pematang Siantar, Sumatera Utara 21137',
          'locationLink': 'https://maps.app.goo.gl/gtae6yL2AhJZgLmM8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPVTKqhg9KqCqq1_DhUJEq-PKZ871ETvFrB5Mda=w408-h255-k-no',
          'description': '',
        },
        {
          'name': 'Efarina Etaham Hospital',
          'address': 'Jl. Pendeta J.Wismar Saragih No.1, Bane, Kec. Siantar Martoba, Kota Pematang Siantar, Sumatera Utara 21137',
          'locationLink': 'https://maps.app.goo.gl/EqddjfuZVJWHNc6QA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMIpankhoLxkczjx8FhenaIU5I35koV3-6K6k2n=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Indonesia National Army Hospital',
          'address': 'Jl. Gunung Simanuk Manuk No.6, Timbang Galung, Kec. Siantar Bar., Kota Pematang Siantar, Sumatera Utara 21143',
          'locationLink': 'https://maps.app.goo.gl/sE4joJGXH2goMAix6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPn1KYei98bu8tltPiFxAWeV8yrRktjvOq51Ikz=w408-h255-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Tebing Tinggi',
      'hospitals': [
        {
          'name': 'Dr H Kumpulan Hospital',
          'address': '85H4+W8J, Jl. Dr. Kumpulan Pane, Tebingtinggi Deli, Bandar Utama, Kec. Tebing Tinggi, Kota Tebing Tinggi, Sumatera Utara 20998',
          'locationLink': 'https://maps.app.goo.gl/pLDtTPURrVsCeRbo8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPC1_9IzafqCSB9-SDk0abvJpb6WPeIYsPuP401=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Sibolga',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Langsa',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Gunungsitoli',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Padang',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Bukittinggi',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Padang Panjang',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Pariaman',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Payakumbuh',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Solok',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Pekanbaru',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Dumai',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Batam ',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Tanjung Pinang',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Jambi',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Sungai Penuh',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Bengkulu',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Bandar Lampung',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Metro',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Palembang',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Lubuklinggau',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Prabumulih',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Pagar Alam',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Pangkal Pinang',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Palembang',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Pontianak',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Singkawang',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Palangka Raya',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Banjarmasin',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Banjarbaru',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Samarinda',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Balikpapan',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Bontang',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Tarakan',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Manado',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Bitung',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Tomohon',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Kotamobagu',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Palu',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Makassar',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Parepare',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Palopo',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Kendari',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Bau-Bau',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Gorontalo',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Mamuju',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Denpasar',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Ambon',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Tuai',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Ternate',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Tidore Kepulauan',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Mataram',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Bima',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Kupang',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Jayapura',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Sorong',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Monokwari',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
    {
      'name': 'Merauke',
      'hospitals': [
        {
          'name': 'RSUP Dr. Sardjito',
          'address': 'Jl. Kesehatan No. 2, Yogyakarta',
          'locationLink': 'https://maps.app.goo.gl/abcd5678xyz', // Contoh link lokasi RSUP Dr. Sardjito
          'image': 'https://via.placeholder.com/150/32CD32',
          'description': 'RSUP Dr. Sardjito adalah rumah sakit umum terbesar di Yogyakarta.',
        },
      ],
    },
  ];

  List<Map<String, dynamic>> filteredRegions = [];
  Set<String> favoriteHospitals = {};
  String query = '';

  @override
  void initState() {
    super.initState();
    filteredRegions = regions;
  }

  void _filterRegions(String query) {
    setState(() {
      this.query = query;
      filteredRegions = regions
          .where((region) =>
          region['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Future<void> _launchMap(String locationLink) async {
    if (await canLaunch(locationLink)) {
      await launch(locationLink);
    } else {
      throw 'Could not open the map link.';
    }
  }

  void _toggleFavorite(String hospitalName) {
    setState(() {
      if (favoriteHospitals.contains(hospitalName)) {
        favoriteHospitals.remove(hospitalName);
      } else {
        favoriteHospitals.add(hospitalName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Catalog', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        backgroundColor: Colors.teal,
        elevation: 10,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade300, Colors.teal.shade500],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.teal.shade200],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                onChanged: _filterRegions,
                decoration: InputDecoration(
                  hintText: 'Search Region...',
                  prefixIcon: Icon(Icons.search, color: Colors.teal),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.teal, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.teal.shade700, width: 2),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredRegions.length,
                itemBuilder: (context, index) {
                  final region = filteredRegions[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HospitalListPage(
                            region: region,
                            favoriteHospitals: favoriteHospitals,
                            toggleFavorite: _toggleFavorite,
                          ),
                        ),
                      );
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      child: Card(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        elevation: 12,
                        shadowColor: Colors.black.withOpacity(0.2),
                        child: ListTile(
                          title: Text(
                            region['name'],
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal[800]),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.teal.shade600),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HospitalListPage extends StatelessWidget {
  final Map<String, dynamic> region;
  final Set<String> favoriteHospitals;
  final Function(String) toggleFavorite;

  const HospitalListPage({
    Key? key,
    required this.region,
    required this.favoriteHospitals,
    required this.toggleFavorite,
  }) : super(key: key);

  Future<void> _launchMap(String locationLink) async {
    if (await canLaunch(locationLink)) {
      await launch(locationLink);
    } else {
      throw 'Could not open the map link.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${region['name']} Hospitals'),
        backgroundColor: Colors.teal,
        elevation: 10,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade300, Colors.teal.shade500],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: region['hospitals'].length,
        itemBuilder: (context, index) {
          final hospital = region['hospitals'][index];
          final isFavorite = favoriteHospitals.contains(hospital['name']);

          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Hero(
                          tag: hospital['name'],
                          child: Image.network(hospital['image'], height: 200, fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        hospital['name'],
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                      ),
                      SizedBox(height: 8),
                      Text(
                        hospital['address'],
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 16),
                      Text(hospital['description'], style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => _launchMap(hospital['locationLink']),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.map, color: Colors.white),
                                SizedBox(width: 8),
                                Text('Show on Map'),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 6,
                            ),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: Colors.teal,
                            ),
                            onPressed: () => toggleFavorite(hospital['name']),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                elevation: 12,
                shadowColor: Colors.black.withOpacity(0.2),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      hospital['image'],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    hospital['name'],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(hospital['address']),
                  trailing: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.teal,
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Hero(
                                tag: hospital['name'],
                                child: Image.network(
                                  hospital['image'],
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              hospital['name'],
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                            ),
                            SizedBox(height: 8),
                            Text(
                              hospital['address'],
                              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                            ),
                            SizedBox(height: 16),
                            Text(hospital['description'], style: TextStyle(fontSize: 16)),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () => _launchMap(hospital['locationLink']),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.map, color: Colors.white),
                                      SizedBox(width: 8),
                                      Text('Show on Map'),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    elevation: 6,
                                  ),
                                ),
                                SizedBox(width: 20),
                                IconButton(
                                  icon: Icon(
                                    isFavorite ? Icons.favorite : Icons.favorite_border,
                                    color: Colors.teal,
                                  ),
                                  onPressed: () => toggleFavorite(hospital['name']),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}