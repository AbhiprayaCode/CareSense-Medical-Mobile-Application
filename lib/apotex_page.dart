import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ApotexPage(),
    theme: ThemeData(
      fontFamily: 'Poppins',
      primarySwatch: Colors.teal,
    ),
  ));
}

class ApotexPage extends StatefulWidget {
  @override
  _ApotexPageState createState() => _ApotexPageState();
}

class _ApotexPageState extends State<ApotexPage> {
  final List<Map<String, dynamic>> regions = [
    {
      'name': 'Jakarta Pusat',
      'pharmacies': [
        {
          'name': 'Kalibaru Pharmacy',
          'address': 'Jl. Kalibaru Barat No. 65, RT.2/RW.10, Kebon Kosong, Kemayoran, Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10630',
          'locationLink': 'https://maps.app.goo.gl/rApsvvYo3ocFewGA7',
          'image': 'https://goalkes-images.s3.ap-southeast-1.amazonaws.com/media/3473/0ZSTotTxJGKOy9y2I3kH859RVmaHV6lIbjpOs8Tp.jpg',
          'description': '',
        },
        {
          'name': 'Titi Murni 128 Pharmacy',
          'address': 'Jl. Kramat Raya No.128, RT.1/RW.8, Kenari, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10430',
          'locationLink': 'https://maps.app.goo.gl/y1VSoPcXtk1Ti3s6A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPCS3IlVRVeTGZVlxJ68KY6Xk7Xge88zyq5kGzV=w408-h246-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Pharmacy',
          'address': 'Jl. Cemp. Putih Barat No.3A, RT.1/RW.3, Cemp. Putih Bar., Kec. Cemp. Putih, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10520',
          'locationLink': 'https://maps.app.goo.gl/rDBgShmZ3jVNDGZe6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMXXIlkzT8zfHmsANBo23wbfFveGzUw9Op8ZXop=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma Pharmacy',
          'address': 'Jl. Senen Raya No.66, RT.9/RW.1, Senen, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10410',
          'locationLink': 'https://maps.app.goo.gl/qQbqRiyCerac7eCa6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOPxfUgEbwLseKOErv3WPRFuuX5kGN_HGxFaKg7=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma Pharmacy',
          'address': 'Jl. Garuda No.47, Gn. Sahari Sel., Kec. Kemayoran, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10610',
          'locationLink': 'https://maps.app.goo.gl/N7NKVbusk77L9xBS9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNnsLU1GI5V9J_6cJ0qp7QGZ6ixlFjUOkmdEhiK=w532-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Jakarta Utara',
      'pharmacies': [
        {
          'name': 'Sungai Bambu Pharmacy',
          'address': 'Jl. Sungai Bambu IIB No.5B 9, RT.10/RW.8, Sungai Bambu, Kec. Tj. Priok, Jkt Utara, Daerah Khusus Ibukota Jakarta 14350',
          'locationLink': 'https://maps.app.goo.gl/zHS4Ve8V76x6wPw28',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPPrXBCNCPS9HN4f6Ntap-KXN4XDFEcqM_0MzGe=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'K. 24 Pharmacy',
          'address': 'Jl. Alur Laut No.3, RT.3/RW.6, Rawabadak Sel., Kec. Koja, Jkt Utara, Daerah Khusus Ibukota Jakarta 14230',
          'locationLink': 'https://maps.app.goo.gl/88PDedzFCtKqsjsN6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMwb-Ut1CI0z1gk4rOOqi6WdULUmHS1xvXoQdiK=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Lido Pharmacy',
          'address': '2, Jl. Anggrek No.37, RT.2/RW.12, Rawabadak Utara, Kec. Koja, Jkt Utara, Daerah Khusus Ibukota Jakarta 14230',
          'locationLink': 'https://maps.app.goo.gl/ZMUqRbj83nuVoM1U9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMHdDRDee0EBXRUF9_elq8hKpMCSVK0dMOP2llY=w408-h434-k-no',
          'description': '',
        },
        {
          'name': 'K-24 MOI Pharmacy',
          'address': 'Jl. Boulevard Bar. Raya No.1, RT.18/RW.8, Klp. Gading Bar., Kec. Klp. Gading, Jkt Utara, Daerah Khusus Ibukota Jakarta 14240',
          'locationLink': 'https://maps.app.goo.gl/aSGpWWTUC3FvFQ6V8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOuic6ocFs26xyHaYVmKQmvKEO66KyIFSzw53RH=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Kramat Jaya Pharmacy',
          'address': 'Jl. Kramat Jaya No. 22 F Blok A Kav.no.7 Rt/rw 006/017, RW.1, Tugu Utara, Kec. Koja, Jkt Utara, Daerah Khusus Ibukota Jakarta 14260',
          'locationLink': 'https://maps.app.goo.gl/MHFYATWnEjmzuL4N7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP3sfdDjLIWCtmRANXOWR1MkPk3mYh2dNw_9uM9=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Sehat Sentosa Pharmacy',
          'address': 'Jl. Klp. Gading No.2 Blok FC 2, RT.7/RW.13, Kec. Klp. Gading, Jkt Utara, Daerah Khusus Ibukota Jakarta 14240',
          'locationLink': 'https://maps.app.goo.gl/kqbdjyMGHXj3gebi8',
          'image': 'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=wcuXjGaUMub50z-EiWKHfg&cb_client=search.gws-prod.gps&w=408&h=240&yaw=271.3428&pitch=0&thumbfov=100',
          'description': '',
        },
      ],
    },
    {
      'name': 'Jakarta Barat',
      'pharmacies': [
        {
          'name': 'K-24 Pharmacy',
          'address': 'Jl. Puri Kembangan No.8B, Kembangan Sel., Kec. Kembangan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11610',
          'locationLink': 'https://maps.app.goo.gl/8NvA7PnwHiubr6X89',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNa7jqklotzRXZFRfophmEaCWc4Xa2qd2OpRzx6=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Peta Barat Pharmacy',
          'address': 'Jl. Peta Barat Jl. Rawa Lele, RT.5/RW.7, Pegadungan, Kec. Kalideres, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11830',
          'locationLink': 'https://maps.app.goo.gl/HQ5ocX8wbxT1AYM7A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPsvxVf-b4Dhe2JYcn0w5hxd39KNdOKQxO6I_1f=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Jembatan Lima Pharmacy',
          'address': 'Jl. KH.Moh.Mansyur No.99, Duri Sel., Kec. Tambora, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11270',
          'locationLink': 'https://maps.app.goo.gl/1Ffr25VnxvGzFRmr9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPOPY2Tzqbv2qSM5OyA7GL_0r14BgUCsW-ADq9E=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Bugar Pharmacy',
          'address': 'Rukan Grand Puri Niaga, Jl. Puri Kencana No.6-A Blok L, RT.11/RW.7, Kembangan Sel., Kec. Kembangan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11610',
          'locationLink': 'https://maps.app.goo.gl/jkURnrPu86wdZ5gi7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNplY44WqK7t6pD8OuE_rXfJUSYwMFliLo3SMzQ=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'WELLINGS Greenville Pharmacy',
          'address': 'Jl. Surya Wijaya No. 32A dan 32B, RT.15/RW.7, Kedoya Utara, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11520',
          'locationLink': 'https://maps.app.goo.gl/qK6AvSU3dsZYyA9e6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPbEvMJQwC0ChqsaA-I4jZyJER9n54jx2bGdzCv=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Roxy Pharmacy',
          'address': 'Jl. Raya Mangga Besar No.87 15, RT.1/RW.1, Taman Sari, Kec. Taman Sari, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11170',
          'locationLink': 'https://maps.app.goo.gl/7gZUwaHji5LUnkYXA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPYY3J61hXMhIr8IEPEal3vIin9RLQRH-9f3i0D=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Golden Sehat Duri Raya Pharmacy',
          'address': 'Duri Raya No. 87 RT/RW 002/007, RT.1/RW.7, Kedoya Sel., Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11510',
          'locationLink': 'https://maps.app.goo.gl/125MJ5eLeVHPasrs8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMYuS68MwMNep1U0_aRhr31qR08JmylkWdyAwDf=w408-h724-k-no',
          'description': '',
        },
        {
          'name': ' K-24 Jelambar Utama Pharmacy',
          'address': 'Jl. Jelambar Utama No.13 A, Wijaya Kusuma, Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11460',
          'locationLink': 'https://maps.app.goo.gl/SVJwrq69VBs2kaRe9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNAC4xCiwBTN72mjARwTwilKX9q-oJW6C0-ZXEC=w533-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Jakarta Selatan',
      'pharmacies': [
        {
          'name': 'K-24 Hang Tuah Pharmacy',
          'address': 'Jl. Hang Tuah Raya No.59, Gunung, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12120',
          'locationLink': 'https://maps.app.goo.gl/FAqJjTXRqPpSxPWY7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNgxjD4ADIWDKA_hYalUPH2Ic2-J6xsIQp29vzF=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Bangka Raya Pharmacy',
          'address': 'Jl. Bangka Raya No.40D 14, RT.14/RW.3, Pela Mampang, Kec. Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12720',
          'locationLink': 'https://maps.app.goo.gl/ZFgGPdezYgVq6KDS8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOahRU9_gVlM4N4gZyj6NBADVv8ZIa1ZMejWVKp=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Dr. Bambang Soelistyo Pharmacy',
          'address': 'Jl. Lenteng Agung Raya No.20A, RT.3/RW.5, Lenteng Agung, Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12610',
          'locationLink': 'https://maps.app.goo.gl/GApd5aX3eAVn9sCV7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMsdI0d3eQYdiKYH_zHg5Gd-qYX7mKODWjfBHrR=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Setia Budhi Pharmacy',
          'address': 'Jl. Setia Budi Tengah No.2, RT.1/RW.1, Kuningan, Setia Budi, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12910',
          'locationLink': 'https://maps.app.goo.gl/srpKCVkCuzGsmw4B8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNaWJpeewfqet5waiHQox1Ghxm5rwsJQm9Vg_K0=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Jakarta Timur',
      'pharmacies': [
        {
          'name': 'K-24 Pahlawan Revolusi Pharmacy',
          'address': 'Jl. Pahlawan Revolusi No.41, RT.4/RW.8, Klender, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13470',
          'locationLink': 'https://maps.app.goo.gl/r6BRG8vYVGuQaWYh8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPpMVHuZC5_TOR2fcJH8hAy_vp9X58YGKJCkLRN=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Rawamangun Pharmacy',
          'address': 'Jl. Balai Pustaka No.16, RT.4/RW.11, Rawamangun, Kec. Pulo Gadung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13220',
          'locationLink': 'https://maps.app.goo.gl/zk1unJW9T88F9NyF9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOCnS3WRNRiSti-16FqhFH5ARXdBDnvGMMeI8Tp=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Semarang',
      'pharmacies': [
        {
          'name': 'K-24 Gajah Mada Pharmacy',
          'address': 'Jl. Gajahmada No.63, Kembangsari, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50133',
          'locationLink': 'https://maps.app.goo.gl/vEKVZM7kQaJ1X9tE8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNnA5yrc8o6LIWWOiIPm4wbbuvaktNpG4BP8BaF=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Gajah Mada Pharmacy',
          'address': 'Jl. Gajahmada No.63, Kembangsari, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50133',
          'locationLink': 'https://maps.app.goo.gl/vEKVZM7kQaJ1X9tE8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNnA5yrc8o6LIWWOiIPm4wbbuvaktNpG4BP8BaF=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma Pharmacy',
          'address': 'Jl. Pandanaran No.66, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132',
          'locationLink': 'https://maps.app.goo.gl/KK9pFo4G9MjWJudDA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOmgW7LHj9AVfPJuUaiFSIlUeWsZvD9q11VkILP=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 MT Haryono Pharmacy',
          'address': 'Jl. MT. Haryono No.97, Purwodinatan, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50137',
          'locationLink': 'https://maps.app.goo.gl/PQksHpFooY4YENUK6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMKo2UipyKWrfS2ExPVaFUiXnSn1XV7wtdjpvJ-=w408-h544-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Surakarta',
      'pharmacies': [
        {
          'name': 'K-24 MT Setiabudi Pharmacy',
          'address': 'Jl. Dr. Setiabudi No.113, Sidorejo, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57134',
          'locationLink': 'https://maps.app.goo.gl/ZwnMLUnpgQKevtJQ6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN2Yb8tupLZZesmmzyNL535J3acvZ_b31I3aoMI=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Farmarin Pharmacy',
          'address': 'Jl. Gremet No.3, Manahan, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139',
          'locationLink': 'https://maps.app.goo.gl/APtxNpp3LrP7XAaK7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPWgRBPniie_eUKxsnONrFFHduZV6z1Ft8E0Ppp=w408-h439-k-no',
          'description': '',
        },
        {
          'name': 'Pasar Legi Pharmacy',
          'address': 'Jl. Letjen S. Parman No.133, Kestalan, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57133',
          'locationLink': 'https://maps.app.goo.gl/CGKGGSorkSRpZSET6',
          'image': 'https://lh3.googleusercontent.com/gps-proxy/ALd4DhEcpjLuWQP1uhRJFM70_-__qtU2lZdTg1E98zCCW29Sdp6WwdfLvLhujtNqbkvwlErIk_Lqf7EeW7pGpHuEwJJCwgcgO7eZdWhw4jAKIC5WBa9DjNMlevmjKWYmMQ1VL0wxlNUi4ThkR-utQBg8aIMLMz1clXKUG4mVNGOr9VvrkXqJ5Tme89ypny1mVg4f6iFZRCM=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma Adi Sucipto Pharmacy',
          'address': 'Jl. Laksda Adisucipto No.70, Kerten, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57143',
          'locationLink': 'https://maps.app.goo.gl/XMXU1f3UcejTvRZ47',
          'image': 'https://lh3.googleusercontent.com/gps-proxy/ALd4DhEu23PPzJc4HU4MHNMTXmev5x71u-1ew13MuFqsNrkKExxvcGm09fDZ2xfJhWyHlaX5PQaVwKQFAZN-RSqNMccY2RPYx6jsOUM3gfdxvo41JqSv_U3vtZcsplJEn_sVJ7ix3x7paN9UxLqVM4zbILfGtbZOtynuwesf_TguIN0539g8WycxWOIVEbIPtp4YvyytKfo=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Solo Pharmacy',
          'address': 'Jl. Brigjend Katamso No.3, Jebres, Kec. Jebres, Kota Surakarta, Jawa Tengah 57128',
          'locationLink': 'https://maps.app.goo.gl/62D5kJHq5SFav79V6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM8YhQVcWfpkKnFk0jo72e7vHw5FJkzFIYrlN6T=w408-h544-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Magelang',
      'pharmacies': [
        {
          'name': 'Waras Pharmacy',
          'address': 'Jl. Pemuda No.119-121, Rejowinangun Utara, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 56122',
          'locationLink': 'https://maps.app.goo.gl/ZRcrBa8SfV8rodWc8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOJNOUQamEhPAGdQfQ9v0Xrff1YYyfij0fJZMKv=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Borobudur Pharmacy',
          'address': 'Jl. Tentara Pelajar No.54, Kemirirejo, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 56122',
          'locationLink': 'https://maps.app.goo.gl/8P3mdkFCCXXYjzEk7',
          'image': 'https://lh3.googleusercontent.com/gGKNkPRvDEvXVxqBOGyWp4pJNG4PZ2_10h-mLIV1eunqSDaUqiqCxo3d5erh-JhG0A=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K24 Pharmacy',
          'address': 'Jl. Pangeran Diponegoro, RT.2 / RW9, Cacaban, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 56121',
          'locationLink': 'https://maps.app.goo.gl/ufx34mU8WW1UFRVQA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNoweCA8jpodrOLunpst3zg91TX3NyZjS5UQmPr=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Rakyat Pharmacy',
          'address': 'Jl. Ahmad Yani No.24, Gelangan, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 56112',
          'locationLink': 'https://maps.app.goo.gl/5L1MQG7MWTEcsvKx7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPo5RdEoN6lEjFa7T96GhyEomrJxwRjS4W5Cbsg=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Salatiga',
      'pharmacies': [
        {
          'name': 'Siaga 24 Pharmacy',
          'address': 'Ruko, Jl. Taman Sari Jl. Jend. Sudirman No.18, Salatiga, Kec. Sidorejo, Kota Salatiga, Jawa Tengah 50711',
          'locationLink': 'https://maps.app.goo.gl/siwv1GNdyhazSRuQ8',
          'image': 'https://lh3.googleusercontent.com/_ZPe8OZ_f_4w4wbS__P-r50r79byvVrJXWVCfwPSUFiHmlpe-dEIRNQdAoZY4SA=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Vitra Pharmacy',
          'address': 'Jl. Diponegoro No.4, Salatiga, Kec. Sidorejo, Kota Salatiga, Jawa Tengah 50711',
          'locationLink': 'https://maps.app.goo.gl/jQrwrjGkyQQu1P2k8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMex0tfYjKhIbHEDLHeaWx1LfKyhVMIz6qVioGi=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma Pharmacy',
          'address': 'Jl. Brigjen Sudiarto No.30, Mangunsari, Kec. Sidomukti, Kota Salatiga, Jawa Tengah 50724',
          'locationLink': 'https://maps.app.goo.gl/2B3rkcGGnvsGcfFH8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPeo7SNr6mPNzImNeFfAMnoKyMga4234caZJ0mR=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'K24 Pharmacy',
          'address': 'Jl. Tingki Barukan, RT.001/RW.004, Tingkir Tengah, Kec. Tingkir, Kota Salatiga, Jawa Tengah 50746',
          'locationLink': 'https://maps.app.goo.gl/U49wMW7xaCew6Jt69',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNtup-UUxFiwzRQlGtoz-FhEhTKA96Ed9nYFZeN=w427-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Pekalongan',
      'pharmacies': [
        {
          'name': 'Asli Pharmacy',
          'address': 'Jl. Sultan Agung No.93-95, Sampangan, Kec. Pekalongan Tim., Kota Pekalongan, Jawa Tengah 51126',
          'locationLink': 'https://maps.app.goo.gl/6ozDdNGJNzvPGjr29',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPOLuFe-7MsTSPsnEn2kgNz347HnnqmOisexkRZ=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Slamet Tony Pharmacy',
          'address': 'Jl. Sultan Agung No.108, Sugihwaras, Kec. Pekalongan Tim., Kota Pekalongan, Jawa Tengah 51126',
          'locationLink': 'https://maps.app.goo.gl/44Pmn3Lxm6RyX8ra7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOKm9WNVRF6kXkaM80WXTvX2lIydxDc6ywIgtjN=w408-h407-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 16',
          'address': 'Jl. Imam Bonjol No.32, Kergon, Kec. Pekalongan Bar., Kota Pekalongan, Jawa Tengah 51113',
          'locationLink': 'https://maps.app.goo.gl/RGMuJi4dd6ANWFCT6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOQY0d6jXUTrss7dAZpLK7T3Lw8iOm_wwZiRkx6=w408-h380-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 323',
          'address': 'Jl. Urip Sumoharjo No.61, Podosugih, Kec. Pekalongan Bar., Kota Pekalongan, Jawa Tengah 51111',
          'locationLink': 'https://maps.app.goo.gl/PMzfVzDnEb7D5u7J8',
          'image': 'https://lh3.googleusercontent.com/gps-proxy/ALd4DhGGVyBKBb_yALkJud1mve6xGuh3fB0nVhjJk_1ntWmItnI300XAeQLKW5ap-WgUmPMQ1hcLqH2fuKIQ8ssANL3YYv9KFJu4IDDxK7fV6VFfVIF-qOS6MC-emep5fuCzAfWAPzNzreWOx3rc0VjkTbZrC6Ehc34KTRj_v4CSiCgfy0DB6dph5CBcApKVqTsRtdyF7tQ=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Wahyu Pharmacy',
          'address': 'Jl. K.H. Ahmad Dahlan, Bumirejo, Kec. Pekalongan Bar., Kota Pekalongan, Jawa Tengah 51151',
          'locationLink': 'https://maps.app.goo.gl/QrqrnFXY9KCGg8DB6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNY5-O-vgF9qO4u_C_2sxdqotjChQ0Kht0al3XN=w408-h408-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Tegal',
      'pharmacies': [
        {
          'name': 'Sumber Waras Pharmacy',
          'address': 'Jl. Yos Sudarso Komplek Nirmala Square Blok RS4, Mintaragen, Kec. Tegal Tim., Kota Tegal, Jawa Tengah 52121',
          'locationLink': 'https://maps.app.goo.gl/jbkfvVpVa7ShVBLy9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMZqko24dBkYfsBbFR_ON7RQvNaD1L5oD4RHvAo=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 97',
          'address': 'Jl. Mayjend Sutoyo No.44, Pekauman, Kec. Tegal Bar., Kota Tegal, Jawa Tengah 52113',
          'locationLink': 'https://maps.app.goo.gl/sme3sRj8oc4Q3HGZ7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN_dPNs6PcNLtsC2-U7Bc7PgECKpYOBBDPUbLx0=w408-h408-k-no',
          'description': '',
        },
        {
          'name': '24 Jam Pharmacy',
          'address': 'Jl. Sultan Agung No.15, Kejambon, Kec. Tegal Tim., Kota Tegal, Jawa Tengah 52124',
          'locationLink': 'https://maps.app.goo.gl/UFxvfHngc5Buhtve7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO_ZUVbumzW0xGZorwi22dIsxqNPnCwEhXgIlOC=w408-h341-k-no',
          'description': '',
        },
        {
          'name': 'Langon Sehat Pharmacy',
          'address': 'Slerok, Tegal Timur, Tegal City, Central Java 52125',
          'locationLink': 'https://maps.app.goo.gl/qeDgxE1LNpQVFYJP6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOeAEY7IBYwiErafHxpbSaX7S8ObMbAas4bQwZe=w408-h629-k-no',
          'description': '',
        },
        {
          'name': 'Baitu Syifa Pharmacy',
          'address': 'JL. Pala Raya, No. 46, Mejasem, Griya Mejasem Baru, Mejasem Bar., Kec. Kramat, Kabupaten Tegal, Jawa Tengah 52181',
          'locationLink': 'https://maps.app.goo.gl/5GSpVhGi9P9VjABU9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM-Y4m2xq9T12ulgQwqsidNTL8HWmnJNc3CvQ5J=w408-h270-k-no',
          'description': '',
        },
        {
          'name': 'Nurani Pharmacy',
          'address': '44RV+833, Jl. Dr. Setia Budi, Mintaragen, Kec. Tegal Tim., Kota Tegal, Jawa Tengah 52121',
          'locationLink': 'https://maps.app.goo.gl/g2gEFxGpoJuzAuFe9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNr8M6YkaAWYVRqTKoYh0Onl7055snK_s6Dw-L6=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Bandung',
      'pharmacies': [
        {
          'name': 'Mitra Medika Pharmacy',
          'address': 'Jl. Trunojoyo No.52, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115',
          'locationLink': 'https://maps.app.goo.gl/39RPCj23nVaqGJLK6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO5gJ_ePxw9UpHhXMPyErILOKKVG_8wOAC0aGUS=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma Melong',
          'address': 'Jl. Melong Asih No.67D, Cijerah, Kec. Bandung Kulon, Kota Bandung, Jawa Barat 40213',
          'locationLink': 'https://maps.app.goo.gl/b4ejNLYPqgCqrMXB7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPC4ozYvQN2KrQbdGYVCi4Gt8FGIBYp0gaLxqww=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Apollo Pharmacy',
          'address': 'Jl. Otto Iskandar Dinata No.379 377, Balonggede, Kec. Regol, Kota Bandung, Jawa Barat 40241',
          'locationLink': 'https://maps.app.goo.gl/D9DHnoKsmX1A63kr6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO_Vd_ohDJPOZUDam4eRkJvXPFo1zpch_fZkcAq=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 355',
          'address': 'Jl. Lemahnendeut No.1E, RT.05/RW.04, Sukawarna, Kec. Sukajadi, Kota Bandung, Jawa Barat 40164',
          'locationLink': 'https://maps.app.goo.gl/AAowocCP51Ud7LkPA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOSeuSvSfsDp9y8-EG8szuwXuWPYdEzwhkGrKuY=w408-h271-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Bekasi',
      'pharmacies': [
        {
          'name': 'K-24 Pharmacy',
          'address': 'Jl. Bintara No.5, Bintara, Kec. Bekasi Bar., Kota Bks, Jawa Barat 17134',
          'locationLink': 'https://maps.app.goo.gl/P3DcqQvRxcZmDvvH6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPcVHidd-MXlxv8_VqTQ_8XiVX9iow1GqTm5aNe=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Bintara Farma',
          'address': 'No.3a, Jl. Bintara No.12a, RT.008/RW.009, Bintara, Bekasi Barat, Bekasi, West Java 17134',
          'locationLink': 'https://maps.app.goo.gl/S3qVY14PmTW7Ekg98',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN8JenbMJUggvQgAGm5ULjCZNs_Lf_s_q04mt6-=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Fajar Sehat Pharmacy',
          'address': 'Jl. Patriot No.99, RT.005/RW.003, Jakasampurna, Kec. Bekasi Bar., Kota Bks, Jawa Barat 17145',
          'locationLink': 'https://maps.app.goo.gl/ZaqPHJsWcABLcsfy6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNXh0TFbxjgoiNc599tneHicPQQH5a1BpaPKIOR=w408-h725-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Pharmacy',
          'address': 'Jl. Nangka Raya Kav. 2 No. 9, RT.003/RW.017, Kayuringin Jaya, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17135',
          'locationLink': 'https://maps.app.goo.gl/6WnUt1vdGDd9ZcFg9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNcLiCQXEu8jL1HUzF4sYilvV1-ec2rmEC7B2R-=w408-h544-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Bogor',
      'pharmacies': [
        {
          'name': 'Askia BCC Pharmacy',
          'address': 'Ruko, Jl. Bukit Cimanggu City Raya Jl. Dahlia Mesjid Blk. A1 No.53, Cibadak, Kec. Tanah Sereal, Kota Bogor, Jawa Barat 16166',
          'locationLink': 'https://maps.app.goo.gl/ao4rc172QiESnbyQ9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNgr3NM8bjanz99MDSrmTBhlBMEZmeXi1ZOd1gX=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'PRIMA Pharmacy',
          'address': 'Jl. Raya Pajajaran No.25, RT.03/RW.01, Babakan, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat 16129',
          'locationLink': 'httpshttps://maps.app.goo.gl/345qLjMkwKJd2dfX9',
          'image': 'https://lh4.googleusercontent.com/lKdx23MfQJGy-2ru20UY-S7D5ddU5aLkwtRvUD2Zd22atdU3p3LyZeiczVYH1cMc=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kota Batu 2 Pharmacy',
          'address': 'Dekat SPBU, Jl kapten Yusuf ruko D188, RT.03/RW.15, Kota Batu, Kec. Ciomas, Kabupaten Bogor, Jawa Barat 16610',
          'locationLink': 'https://maps.app.goo.gl/NM8yaLxSer1Y7UGY7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNLELkYzDrVNmkdQlznbp_SsmJ-iPa_zEM5HGpA=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Delta 2 Pharmacy',
          'address': 'Jl. Raya Pajajaran No.9, RT.02/RW.03, Bantarjati, Kec. Bogor Utara, Kota Bogor, Jawa Barat 16153',
          'locationLink': 'https://maps.app.goo.gl/9vjjTJUvfUKmkR6c8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNK9FRg1TbUUNf3IDu_dflkbPx2P2zgCtZ7qPzI=w408-h725-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Cirebon',
      'pharmacies': [
        {
          'name': 'Kimia Farma Siliwangi Pharmacy',
          'address': 'Jl. Siliwangi No.119, Kebonbaru, Kec. Kejaksan, Kota Cirebon, Jawa Barat 45121',
          'locationLink': 'https://maps.app.goo.gl/FB8gqV6vfWLdyKem6',
          'image': 'https://lh6.googleusercontent.com/vY46lqH0n3sI13LqoxUMpWb9Rlr4motD7hj4b6KLYfyZ49m0bkKnurRhmKYnY6s=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Tuparev Pharmacy',
          'address': 'Jl. Tuparev No.38A, Kedungjaya, Kec. Kedawung, Kabupaten Cirebon, Jawa Barat 45153',
          'locationLink': 'https://maps.app.goo.gl/axibP5nf4atqd1Kb7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPVqxZ2edpf7WqpbF7JlHaBkIDitVgjxD6gZmFI=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Prima Pharmacy',
          'address': 'Jl. Sisingamangaraja No.58A, Jawa Barat, Kec. Lemahwungkuk, Kota Cirebon, Jawa Barat 45112',
          'locationLink': 'https://maps.app.goo.gl/fXgr4UwdUrK5W1am6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN0_634M-ZQACQ9Xc6OgN-fk9nc5MqcmGfg1TmU=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Pharmacy',
          'address': 'Jl. Kalitanjung No.92, Harjamukti, Kec. Harjamukti, Kota Cirebon, Jawa Barat 45143',
          'locationLink': 'https://maps.app.goo.gl/rGhTpdpsCw1w6bji7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN4WPZF9F2EHMoAqGDESB6083nOWdS-YRQkdXeD=w408-h491-k-no',
          'description': '',
        },
        {
          'name': 'Aman Farma Pharmacy',
          'address': 'Jl. Lawanggada No.54, Pekalipan, Kec. Pekalipan, Kota Cirebon, Jawa Barat 45117',
          'locationLink': 'https://maps.app.goo.gl/9knUWPBYMgStdsuEA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPSjylwCtO-H4hQGDkGFa60xH7H8WhRgSIU3-73=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Depok',
      'pharmacies': [
        {
          'name': 'Depok Pharmacy',
          'address': 'Jl. Anggajaya No.1, RT.01/RW.29, Gejayan, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55283',
          'locationLink': 'https://maps.app.goo.gl/u92w7HzwTmjZBLoM7',
          'image': 'https://lh3.googleusercontent.com/gps-proxy/ALd4DhFHkfFoSxJFHyQNAQBPOovpyVtTMwctkrzyl0Mtpxd7XeZ9S_REedzknaTzSihfeb2A75fcnPwUZ2RutVF6vzMf_BkX6ndvd_8Y0QE3gtM-UFhItq3vM4eDbMnHBCX3xlEhnN3VlKJi47pcZPPdEPHKz5uY9H9o7Gw7Qd_fa26HQAGcVE-D_jGAsY4Q6Sew-2eN574=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Roxy Pharmacy',
          'address': 'Jl. Nusantara Raya No.76, Beji, Kecamatan Beji, Kota Depok, Jawa Barat 16421',
          'locationLink': 'https://maps.app.goo.gl/LT7cZJarekiKKbcb8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO4WRZbiZqbQW2v0wWAODn7cUVyMxxVF5ISA0tv=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Merapi Pharmacy',
          'address': 'Jl. Kejayaan No.09 Blok X, Abadijaya, Kec. Sukmajaya, Kota Depok, Jawa Barat 16417',
          'locationLink': 'https://maps.app.goo.gl/33gTtkXbLBbqwgG9A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMATXMyA8LnbK5YL1BJKTrUXy8AaFGbLGUrbkI1=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Sukabumi',
      'pharmacies': [
        {
          'name': 'Indomedika Pharmacy',
          'address': 'Jl. Rumah Sakit No.8, Cikole, Kec. Cikole, Kota Sukabumi, Jawa Barat 43113',
          'locationLink': 'https://maps.app.goo.gl/7i8V7Ybqso4VLd4P8',
          'image': 'https://lh3.googleusercontent.com/IhNGVQkhQODXNgkk8zQzhIKyrE6MntShQgk69gMFWzyFBHxYXoSVwqEuUY0DEvNf=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'LARAS Pharmacy',
          'address': 'Jl. Karamat, Karamat, Kec. Gunungpuyuh, Kota Sukabumi, Jawa Barat 43122',
          'locationLink': 'https://maps.app.goo.gl/vGafYMYZKYGW1qU66',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM9OFeKBv1Sk6LqHUREdB5bO3CGmo26lNj86d5r=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Sumber Waras  Pharmacy',
          'address': 'Jl. Kapten Harun Kabir No.1, Gunungparang, Kec. Cikole, Kota Sukabumi, Jawa Barat 43131',
          'locationLink': 'https://maps.app.goo.gl/eRX3iv6NMMnpo7vn9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN9b9bcx__G7Ez2ZHpWPHko9RMwVvSI_W2OuxK4=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 549  Pharmacy',
          'address': 'Jl. Raya Ngaweng No.35, Sukaraja, Sukabumi Regency, West Java 43192',
          'locationLink': 'https://maps.app.goo.gl/pjZWzzYnDDHh8CsT8',
          'image': 'https://lh6.googleusercontent.com/rnR8iyEtK-eo16UuqEU0Y6DYWowTCG8hLufUzgcgjsSz_LBgSzwc9eMDZal0Rww=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Tasikmalaya',
      'pharmacies': [
        {
          'name': 'Kimia Farma 195  Pharmacy',
          'address': 'Jl. Sutisna Senjaya No.26, Empangsari, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46112',
          'locationLink': 'https://maps.app.goo.gl/ze8VuoqRug9gKPBm8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOXLoEcHq9iiWTy_JwM6TTA321tq0RcDP5LfSTw=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 404  Pharmacy',
          'address': 'Jl. R.E. Martadinata No.87, Cipedes, Kec. Cipedes, Kab. Tasikmalaya, Jawa Barat 46133',
          'locationLink': 'https://maps.app.goo.gl/3Fue6cQcN2yiTLRH6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOdRt71t_91UgvKkARBnBOcutXv8hcevgdjOt4K=w408-h246-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma Siliwangi Pharmacy',
          'address': 'Jl. Siliwangi No.53, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115',
          'locationLink': 'https://maps.app.goo.gl/65tM7xazhHEyH4Yu7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNCXXgTKl8KUOoeYcV8Qgb6LHiXutOq-4I8mVJ1=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'RANCABANGO Pharmacy',
          'address': 'Indomart, Jl. Ir. H. Juanda No. 99 depan LP3i, sebelah Jl. Ranca Bango, Panglayungan, Kec. Cipedes, Kab. Tasikmalaya, Jawa Barat 46134',
          'locationLink': 'https://maps.app.goo.gl/4JNoqhbCndkCrZeh8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM7wiq4xb6thFXvxZxlNlwn0CX2iyY8j1WYJG7M=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Surabaya',
      'pharmacies': [
        {
          'name': 'K-24 Jojoran Pharmacy',
          'address': 'Jl. Raya Menur No.14, Airlangga, Kec. Gubeng, Surabaya, Jawa Timur 60286',
          'locationLink': 'https://maps.app.goo.gl/VKhbdPmMFuDRmh8t7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNocP1UggR7NTEgjz9-Qjp56cHJ0NbGKxOSvv4P=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Ngagel Rejo Pharmacy',
          'address': 'Jl. Ngagel Rejo Kidul No.48, Ngagelrejo, Kec. Wonokromo, Surabaya, Jawa Timur 60245',
          'locationLink': 'https://maps.app.goo.gl/V4h6qTVZqjdQBq9P8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPCJNh6zjwmGt8IaHXG5uTW_GMHzMN7aR8_IsMK=w408-h725-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Indragiri Pharmacy',
          'address': 'Jl. Indragiri No.9 A No, Darmo, Wonokromo, Surabaya, East Java 60241',
          'locationLink': 'https://maps.app.goo.gl/yBtndk5f4mMiA7H8A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPtaWROpwI3Z1Zev5zSRRjB5r_7I_A1tzY9fj7N=w408-h274-k-no',
          'description': '',
        },
        {
          'name': 'K-24 SIMO Pharmacy',
          'address': 'Jl. Simo Kwagean No.74 A, RT.006/RW.14, Petemon, Kec. Sawahan, Surabaya, Jawa Timur 60252',
          'locationLink': 'https://maps.app.goo.gl/w2CJngngoDRDzmBT9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPpIjVwee1j59708KSq0jzBkkg8CD6ktvkIVhTt=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 35 Ngangel Pharmacy',
          'address': 'Ngagel Jaya Selatan St No.109, Pucang Sewu, Gubeng, Surabaya, East Java 60283',
          'locationLink': 'https://maps.app.goo.gl/DgWfeXMr7YxtpwXU9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPsmLFrR1Jp3IMHRjVeic73AFTRmTRWKCvYMDCk=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Bendul Merisi Pharmacy',
          'address': 'Jl. Bendul Merisi No.91, Jagir, Kec. Wonokromo, Surabaya, Jawa Timur 60244',
          'locationLink': 'https://maps.app.goo.gl/iuUyvMPYMH3JQuEz9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOTaOn7tEtt44Lm-mB1aCBGxwa8BQXxNYGwbpgb=w408-h334-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Mulyosari Pharmacy',
          'address': 'Jl. Raya Mulyosari No.99 B, Kalisari, Kec. Mulyorejo, Surabaya, Jawa Timur 60112',
          'locationLink': 'https://maps.app.goo.gl/ecq4QTfUWBvTX5wU8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPX6HtqXCV5dA_WQ_vnGr7fh5x_DzmqKY3LzdNX=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Sukomanunggal Pharmacy',
          'address': 'Jl. Sukomanunggal No.41, Sukomanunggal, Kec. Sukomanunggal, Surabaya, Jawa Timur 60188',
          'locationLink': 'https://maps.app.goo.gl/uzhWg1XH5Hdw7JTM6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMJ--DmFrKBsZKz8SzwWHuo3zaRRl1chS_vhSUV=w408-h725-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Malang',
      'pharmacies': [
        {
          'name': 'Kimia Farma 36 Ijen Pharmacy',
          'address': 'Ijen St No.88, Oro-oro Dowo, Klojen, Malang City, East Java 65119',
          'locationLink': 'https://maps.app.goo.gl/rMC8vgaMfKhoyem5A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMNSq9NnWM5eb1mddvrK84x8bFVZDDRigEX61In=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'SUHAT Pharmacy',
          'address': 'Jl. Soekarno Hatta Ptp I No.66 F, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142',
          'locationLink': 'https://maps.app.goo.gl/D4BdUMYHEksrm83b7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP-rDEqsClv6mGV4FO2LwsNdqLFL7fhqNFScJOw=w408-h724-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 53 Kawi Pharmacy',
          'address': 'Kawi St No.22A, Kauman, Klojen, Malang City, East Java 65119',
          'locationLink': 'https://maps.app.goo.gl/MoJvg4XLzo2KUwTH6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNes1AKpZPijUqzU89ut4cEdCOOcXMvOcp2zf_r=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Tumenggung Suryo Pharmacy',
          'address': 'Jl. Tumenggung Suryo No.143b, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65122',
          'locationLink': 'https://maps.app.goo.gl/diYmC5ukn11BxhZt8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPK4uGTntViEJ3YhfAry9UVmLdGHHdIPYJoyksP=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Raya Sulfat Pharmacy',
          'address': 'Jl. Sulfat No.87 KAV. 1, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126',
          'locationLink': 'https://maps.app.goo.gl/dL9Nv7ES6f3Kd4ey9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOCLLL5SNHVMM9YcW7aDRXQYf67mXWfHZ2pSnCA=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 116 Blimbing Pharmacy',
          'address': 'Jl. Laksda Adi Sucipto No.148, Blimbing, Kec. Blimbing, Kota Malang, Jawa Timur 65125',
          'locationLink': 'https://maps.app.goo.gl/4T5j6XVWirz9ne7d6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPmAAZ41Ghqus4TORqxFfvEBG7grVE_ynuaZ38z=w408-h306-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Probolinggo',
      'pharmacies': [
        {
          'name': 'Probolinggo Pharmacy',
          'address': 'Jl. Mayor Jenderal D.I. Panjaitan, Sukabumi, Kec. Mayangan, Kota Probolinggo, Jawa Timur 67219',
          'locationLink': 'https://maps.app.goo.gl/scXBqoZXf4icwN6X7',
          'image': 'https://lh5.googleusercontent.com/J7RxH6yBNQoSHvTgze7woTiVE0mjUVflQV9VnDvndgLzzCmjmz2r_sjwV1JmxDCM=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma No 522 Pharmacy',
          'address': 'Jl. Dr.Sutomo No.213, Mangunharjo, Kec. Mayangan, Kota Probolinggo, Jawa Timur 67218',
          'locationLink': 'https://maps.app.goo.gl/6YX497B4pg4NVNqd9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipM0JZ4-D_kb-tHwKNGqv2Y9BIm3_pwIbA22BKaq=w408-h589-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma Sudirman Pharmacy',
          'address': 'Jl. Raya Panglima Sudirman No.339, Kebonsari Kulon, Kec. Kanigaran, Kota Probolinggo, Jawa Timur 67214',
          'locationLink': 'https://maps.app.goo.gl/5dVvj9z8ZW9aGRVo6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPbVYOy9bvcEYl9yx2gMheRjjgTATcuh9pXigpo=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Sumber Waras Pharmacy',
          'address': 'Jl. Raya Panglima Sudirman No.356 358, Wiroborang, Kec. Mayangan, Kota Probolinggo, Jawa Timur 67216',
          'locationLink': 'https://maps.app.goo.gl/ZZfaZtQdyemBip3s6',
          'image': 'https://lh6.googleusercontent.com/pIsGXRowQR3PPPKs7QJ-lmDHY4QCIp-6M5dSFoBBV3YM4aObDUjEaHyoZ4qs_VSUqA=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Sarinah Pharmacy',
          'address': 'Jl. Raya Panglima Sudirman No.162, Mangunharjo, Kec. Mayangan, Kota Probolinggo, Jawa Timur 67217',
          'locationLink': 'https://maps.app.goo.gl/JDSfyxhSHDYBVZFd9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOy4caukwHqDydPdLyA-8WkMF1KW5Qz3tTol8n2=w408-h544-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Kediri',
      'pharmacies': [
        {
          'name': 'Kimia Farma 151 Dhoho Pharmacy',
          'address': 'Jl. Stasiun No.47, Balowerti, Kec. Kota, Kota Kediri, Jawa Timur 64129',
          'locationLink': 'https://maps.app.goo.gl/caxsU9DBDK1Qafjq7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPTTnRWToqVehUw9jJ-vGxQHKoR1O9vAyiu58fu=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Bandar Kidul Pharmacy',
          'address': 'Jl. KH Wachid Hasyim No.196, Bandar Lor, Kec. Mojoroto, Kabupaten Kediri, Jawa Timur 63118',
          'locationLink': 'https://maps.app.goo.gl/UJKyc9dm5rSeA47W9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMW2ksCvudTnJ6jNgzJ5yFqP89b8A_tGNC-F33N=w408-h725-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Joyoboyo Pharmacy',
          'address': 'Jl. Joyoboyo No.16, Kemasan, Kec. Kota, Kota Kediri, Jawa Timur',
          'locationLink': 'https://maps.app.goo.gl/hwUCTiTABZUduhBe6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO7vC3NgqMPPJnkAluJgThW2MK5wX3zwiUFh6Tv=w533-h240-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Soehat Pharmacy',
          'address': 'Jl. Soekarno Hatta No.9, Doko, Kec. Ngasem, Kabupaten Kediri, Jawa Timur 64182',
          'locationLink': 'https://maps.app.goo.gl/2dksFD8zcijvToWC9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNzFavKI0w1oeFT5qMQo9czm4cbANuoCbYL-dQA=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma Hasanudin Pharmacy',
          'address': 'Jl. Hasanudin No.53, Dandangan, Kec. Kota, Kota Kediri, Jawa Timur 64122',
          'locationLink': 'https://maps.app.goo.gl/Z1NXrVkHPZhvJdQJA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipMITYpdCM0G4Prb6g9ZIbuJMp9tzNdJ9IJJGCSn=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Dhamar Setia Pharmacy',
          'address': 'Jl. Ahmad Dahlan No.94, Mojoroto, Kec. Kota, Kota Kediri, Jawa Timur 64112',
          'locationLink': 'https://maps.app.goo.gl/rPgGW9EfBdQwxeoGA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOfyMy1sVmiNoj_ZKLNyiRJgsjj-wkFrLwYcY1g=w408-h305-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Bitar',
      'pharmacies': [
        {
          'name': 'Kimia Farma Pharmacy',
          'address': 'Jl. Mawar No.64, Sukorejo, Kec. Sukorejo, Kota Blitar, Jawa Timur 66117',
          'locationLink': 'https://maps.app.goo.gl/2yUXDPGhukp6WT5C7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPlpcrH-iYHn1EwMW5MfvYGhlfrMZ_KmwgbTtsS=w427-h240-k-no',
          'description': '',
        },
        {
          'name': 'Sumber Sehat Pharmacy',
          'address': 'Jl. Cempaka No.16 A, Sukorejo, Kec. Sukorejo, Kota Blitar, Jawa Timur 66121',
          'locationLink': 'https://maps.app.goo.gl/AMkHmVRLx8fUMHKL7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPI-zRV-IT0ubZeA-FGnBUA-8_NqH49px1Q4LMM=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Sumber Waras Putera Pharmacy',
          'address': 'Jl. Seruni No.14, Kepanjen Kidul, Kec. Kepanjenkidul, Kota Blitar, Jawa Timur 66117',
          'locationLink': 'https://maps.app.goo.gl/i4VaxbHfyFAp5CNo9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNzhrlAaNdwt786EeZ2Ji0xqBJhTle26x3Wt8n3=w408-h725-k-no',
          'description': '',
        },
        {
          'name': 'Alvi Pharmacy',
          'address': 'Jl. DR. Sutomo No.10, Sananwetan, Kec. Sananwetan, Kota Blitar, Jawa Timur 66137',
          'locationLink': 'https://maps.app.goo.gl/35nAaYyBQUHAs9uw6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNEWvfFhEBMaLY_aFJci-ezmF0QWNkAIA4gfwso=w426-h240-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Madiun',
      'pharmacies': [
        {
          'name': 'K-24 Pharmacy',
          'address': 'Jl. Dr. Sutomo No.71A, Kartoharjo, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63117',
          'locationLink': 'https://maps.app.goo.gl/ZyZx5EfbfRJGaMnN6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO_dyPSY6B-_ziOIkg-7BzS11rSaigx_Uofx3da=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Agus Salim Pharmacy',
          'address': 'Jl. H. Agus Salim No.129, Pandean, Kec. Taman, Kota Madiun, Jawa Timur 63129',
          'locationLink': 'https://maps.app.goo.gl/a6aT11DXHXaTRWKi6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipO_RKIRoYqbxc7oESGHqT9b1DSSFj2DJbrdy-wO=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 76 Pharmacy',
          'address': 'Jl. Jawa No.14, Kartoharjo, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63116',
          'locationLink': 'https://maps.app.goo.gl/euT8sUGiCnxST2RE7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNeyTot-Nc5oMCmtCRbjGnhBXfLBR4hkjQuglRZ=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Diponegoro Pharmacy',
          'address': 'Jl. Diponegoro No.36 B, Oro-oro Ombo, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63119',
          'locationLink': 'https://maps.app.goo.gl/9mQyjb6RY168DCUq5',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPcnJLyJ9NxuTUSHk9jlCTzg-JdYh6h1AIUVb2z=w408-h725-k-no',
          'description': '',
        },
        {
          'name': 'Wardani Pharmacy',
          'address': 'Jl. Imam Bonjol No.101, Klegen, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63117',
          'locationLink': 'https://maps.app.goo.gl/YfSfqFejrFELDxn46',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP2zuIJs_OfT6agf1e_R3X1wjAuxHPLbJKwUQud=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Ghatotkacha Pharmacy',
          'address': 'Jl. Cokroaminoto No.73-77, Kejuron, Kec. Taman, Kota Madiun, Jawa Timur 63132',
          'locationLink': 'https://maps.app.goo.gl/ord3cE9TqS37Qt6d6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNxog-eKg-Rbk0FHmxHHJuXebLDr5VPzYIITRvw=w408-h725-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Mojokerto',
      'pharmacies': [
        {
          'name': 'Kimia Farma 65 Pharmacy',
          'address': 'Jl. Gajah Mada No.62, Mergelo, Purwotengah, Kec. Magersari, Kota Mojokerto, Jawa Timur 61319',
          'locationLink': 'https://maps.app.goo.gl/eYrbqa5zLHz4gNBn9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOsDn0VgLVqLo-FKL632XY949giT8XpP3SENSFU=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Murni Farma Pharmacy',
          'address': 'Jl. HOS. Cokro Aminoto No.18, Mergelo, Jagalan, Kec. Magersari, Kota Mojokerto, Jawa Timur 61313',
          'locationLink': 'https://maps.app.goo.gl/fPheXgJSoicao4WX7',
          'image': 'https://lh3.googleusercontent.com/gps-proxy/ALd4DhGjOMV58CV4Nm5gLYDQvVMrn7yyGwR-Bkzo2lYKWpTprVLP4VVaFyjG5zwuJB8fS8Cx_Xqqb0IMJh7oydCm6VuN1UpG7FHm_rEiTyMYtVDWYyAziuvb4IquvfGuzq1-0CYhngLdjAKGTrC7KUc16DHC1Uo4MWTBfweZ50W2lMZJ-YdM2hT65Ai9PvArw6DzCOr6Vg=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Wilujeng Pharmacy',
          'address': 'Jl. KH. Wachid Hasyim No.06, Mergelo, Miji, Kec. Prajurit Kulon, Kota Mojokerto, Jawa Timur 61323',
          'locationLink': 'https://maps.app.goo.gl/QUefwCFktcNqrZHx9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPiQluWYOsxd0XLfLL5Ibbjrcp8W5Ft-Zh3ZvZH=w408-h408-k-no',
          'description': '',
        },
        {
          'name': 'Adi Luhung Pharmacy',
          'address': 'Jl. Surodinawan No.164, Mergelo, Surodinawan, Kec. Prajurit Kulon, Kota Mojokerto, Jawa Timur 61328',
          'locationLink': 'https://maps.app.goo.gl/82ZEiUkJNMSbcMS57',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipP6YFs0cJ06JHxEO4FoQNqISQufwCeFBa3ClMpl=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Arofah Medika Pharmacy',
          'address': 'Jl. Gajah Mada No.68, Mergelo, Gedongan, Kec. Magersari, Kota Mojokerto, Jawa Timur 61311',
          'locationLink': 'https://maps.app.goo.gl/asWBZ5ij5SNLJUCJ7',
          'image': 'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=bKTEOSCQE63T6IACMsPl8A&cb_client=search.gws-prod.gps&w=408&h=240&yaw=260.7168&pitch=0&thumbfov=100',
          'description': '',
        },
        {
          'name': 'Japan Pharmacy',
          'address': 'Ruko Raya Blok FF no. R.A, Jl. R.A Basuni No.7, Kepindan, Japan, Kec. Sooko, Kabupaten Mojokerto, Jawa Timur 61361',
          'locationLink': 'https://maps.app.goo.gl/QzPrSiH2nUWd8Qjq9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNspgk-yZx5f5dFK6VtxyCznxuz0lN9pMWdoDqv=w408-h725-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Pasuruan',
      'pharmacies': [
        {
          'name': 'Al Aziz Pharmacy',
          'address': 'Jl. Erlangga No.5, Purworejo, Kec. Purworejo, Kota Pasuruan, Jawa Timur 67115',
          'locationLink': 'https://maps.app.goo.gl/EA1ARwTtewscEV8z6',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN3n8AdU_UdyEKxGk-DkPmr01BDloSl8VUvHO3n=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Kimia Farma 165 Pharmacy',
          'address': 'Jl. Dokter Wahidin Sudiro Husodo No.59, Purutrejo, Kec. Purworejo, Kota Pasuruan, Jawa Timur 67117',
          'locationLink': 'https://maps.app.goo.gl/3gB45ySkLnLVG3NH8',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNsrIg9rvoUojJNMaIObYbtfWFF_2CJ71HzQqnw=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Tamanan Pharmacy',
          'address': 'Jl. Dokter Wahidin Sudiro Husodo No.120, RT.004/RW.003, Purutrejo, Kec. Purworejo, Kota Pasuruan, Jawa Timur 67117',
          'locationLink': 'https://maps.app.goo.gl/og5ttAmwtzjYap9h7',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNchGVmT1BOPhnj-BTiNbEmfix8LtFyKChld-fx=w408-h408-k-no',
          'description': '',
        },
        {
          'name': 'K-24 Pharmacy',
          'address': 'Jl. Raya Prigen No.82, Prigen, Kec. Prigen, Pasuruan, Jawa Timur 67157',
          'locationLink': 'https://maps.app.goo.gl/P2DJKppCdVFrfvFe9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNbs2OQEjEWHL9SIpsXPFkjJfSleYwil8wScbUJ=w408-h544-k-no',
          'description': '',
        },
        {
          'name': 'Sumber Rejeki Pharmacy',
          'address': 'Jl. Dokter Wahidin Sudiro Husodo, Purutrejo, Kec. Purworejo, Kota Pasuruan, Jawa Timur 67111',
          'locationLink': 'https://maps.app.goo.gl/gjCuATMLqGnnrVVdA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN2mGxoIqQIPW3jaxiAeF6U8xdI9_M0outt6qM=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Halmahera Pharmacy',
          'address': 'Jl. Halmahera No.33, Tambaan, Kec. Panggungrejo, Kota Pasuruan, Jawa Timur 67132',
          'locationLink': 'https://maps.app.goo.gl/tGRRmJr1QnUewpK7A',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipPql3QMyrolceO7t7rqv6v6GBWaAcyPn8dD70rx=w408-h573-k-no',
          'description': '',
        },
      ],
    },
    {
      'name': 'Batu ',
      'pharmacies': [
        {
          'name': 'Kimia Farma 245 Pharmacy',
          'address': 'Jl. Diponegoro No.93, Sisir, Kec. Batu, Kota Batu, Jawa Timur 65314',
          'locationLink': 'https://maps.app.goo.gl/nz4eXowJ8z6vSEM19',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN5axVskpUraVCpff__sO9kRXAsLrLj_2G_x2yd=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'X BATU Pharmacy',
          'address': 'Jl. Panglima Sudirman No.36, Ngaglik, Kec. Batu, Kota Batu, Jawa Timur 65311',
          'locationLink': 'https://maps.app.goo.gl/71iL8chj2Q1RfwaCA',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipN-Q2ePzqAExr26NC_-M_sJBVXbs0UJ5dXbPtmz=w426-h240-k-no',
          'description': '',
        },
        {
          'name': 'Batu Sehat Pharmacy',
          'address': 'Jl. Brantas No.24, Sisir, Kec. Batu, Kota Batu, Jawa Timur 65314',
          'locationLink': 'https://maps.app.goo.gl/rW6REtZYnS4msiCC9',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipNuLsWJFstedH7AbWoS1ShMm-sbyEeR2jn4_dLj=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Medison Care Pharmacy',
          'address': '4GGJ+54P, Jl. Diponegoro, Sisir, Kec. Batu, Kota Batu, Jawa Timur 65314',
          'locationLink': 'https://maps.app.goo.gl/KQneiim5ZXEmgne48',
          'image': 'https://lh5.googleusercontent.com/p/AF1QipOtUSX7vwtIQowL4I0Vv8xmLboTZ6b9Zi0Ijkq0=w408-h471-k-no',
          'description': '',
        },
        {
          'name': 'Sumber Waras Pharmacy',
          'address': 'Jl. Dewi Sartika No.E. 42, Temas, Kec. Batu, Kota Batu, Jawa Timur 65315',
          'locationLink': 'https://maps.app.goo.gl/Sfb8yDcszr9R459P9',
          'image': 'https://lh3.googleusercontent.com/gps-proxy/ALd4DhFZkuXStv083ATlAGXOdu_aJ3kFVWZBjE2A16YpYqjliHNnbdSSCji1EvzAxaOuIO6f1TS1Wd9wPH3H01ZSpq2AMQ_Tu7g9szN9Cm9MB5VfVeGGPUR7isbxLTYP-2eSCZ78rbRl2s82Svbb4EBT-zVczLr9xXH-F9XTP0a2n6D75nZm3gS_6fH4Er6LpsEAV-VK4mg=w408-h306-k-no',
          'description': '',
        },
        {
          'name': 'Junrejo Batu Pharmacy',
          'address': 'Jl. Diponegoro No.29, Junrejo, Kec. Junrejo, Kota Batu, Jawa Timur 65321',
          'locationLink': 'https://maps.app.goo.gl/wXNkd7v8g462vM8w9',
          'image': 'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=wwb2UuBij1gMI_6macF_8Q&cb_client=search.gws-prod.gps&w=408&h=240&yaw=112.848274&pitch=0&thumbfov=100',
          'description': '',
        },
        {
          'name': 'Wanti  Pharmacy',
          'address': 'Jl. Tvri No.Ruko 1, Oro-Oro Ombo, Kec. Batu, Kota Batu, Jawa Timur 65316',
          'locationLink': 'https://maps.app.goo.gl/bLS1nrVb6McSRaah6',
          'image': 'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=RDGdUdru9L9v03FHoTX3wQ&cb_client=search.gws-prod.gps&w=408&h=240&yaw=310.6771&pitch=0&thumbfov=100',
          'description': '',
        },
      ],
    },
    {
      'name': 'Banda Aceh',
      'pharmacies': [
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
      'pharmacies': [
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
      'name': 'Lhokseumawe',
      'pharmacies': [
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
      'name': 'Sabang',
      'pharmacies': [
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
      'name': 'Subulussalam',
      'pharmacies': [
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
      'name': 'Medan',
      'pharmacies': [
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
      'name': 'Binjai',
      'pharmacies': [
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
      'name': 'Padang Sidempuan',
      'pharmacies': [
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
      'name': 'Pematangsiantar',
      'pharmacies': [
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
      'name': 'Tebing Tinggi',
      'pharmacies': [
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
      'name': 'Sibolga',
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
      'pharmacies': [
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
        title: Text('Catalog Apotek', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        backgroundColor: Colors.teal,
        elevation: 8,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade400, Colors.teal.shade600],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 2.5,
          ),
          itemCount: regions.length,
          itemBuilder: (context, index) {
            final region = regions[index];
            return AnimatedContainer(
              duration: Duration(milliseconds: 500),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Colors.teal[300]!, Colors.blue[600]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PharmacyListPage(region: region),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_pharmacy,
                          size: 60,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          region['name'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class PharmacyListPage extends StatefulWidget {
  final Map<String, dynamic> region;

  const PharmacyListPage({Key? key, required this.region}) : super(key: key);

  @override
  _PharmacyListPageState createState() => _PharmacyListPageState();
}

class _PharmacyListPageState extends State<PharmacyListPage> {
  List<Map<String, dynamic>> favoritePharmacies = [];

  Future<void> _launchMap(String locationLink) async {
    if (await canLaunch(locationLink)) {
      await launch(locationLink);
    } else {
      throw 'Could not open the map link.';
    }
  }

  void _toggleFavorite(Map<String, dynamic> pharmacy) {
    setState(() {
      if (favoritePharmacies.contains(pharmacy)) {
        favoritePharmacies.remove(pharmacy);
      } else {
        favoritePharmacies.add(pharmacy);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.region['name']} Pharmacies'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritePage(favoritePharmacies: favoritePharmacies),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: widget.region['pharmacies'].length,
        itemBuilder: (context, index) {
          final pharmacy = widget.region['pharmacies'][index];
          final isFavorite = favoritePharmacies.contains(pharmacy);
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: pharmacy['name'],
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            pharmacy['image'],
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        pharmacy['name'],
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        pharmacy['address'],
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 16),
                      Text(
                        pharmacy['description'],
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () => _launchMap(pharmacy['locationLink']),
                            icon: Icon(Icons.map),
                            label: Text('Show on Map'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          IconButton(
                            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                            color: isFavorite ? Colors.red : Colors.grey,
                            onPressed: () => _toggleFavorite(pharmacy),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Card(
              elevation: 8,
              margin: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: Hero(
                  tag: pharmacy['name'],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      pharmacy['image'],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  pharmacy['name'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(pharmacy['address']),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  final List<Map<String, dynamic>> favoritePharmacies;

  const FavoritePage({Key? key, required this.favoritePharmacies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Pharmacies', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        backgroundColor: Colors.teal,
        elevation: 8,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade400, Colors.teal.shade600],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: favoritePharmacies.isEmpty
          ? Center(
        child: Text(
          'No favorites yet!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),
        ),
      )
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: favoritePharmacies.length,
          itemBuilder: (context, index) {
            final pharmacy = favoritePharmacies[index];
            return Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Colors.teal[100]!, Colors.blue[200]!],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      pharmacy['image'],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    pharmacy['name'],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pharmacy['address'],
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline, color: Colors.red),
                    onPressed: () {
                      // Logic to remove pharmacy from favorites
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

