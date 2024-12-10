import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MedicinePage extends StatelessWidget {
  final List<Map<String, dynamic>> diseaseCatalog = [
    {
      'name': 'Flu',
      'description': 'The flu (influenza) is a viral infection affecting the respiratory system. Symptoms include fever, chills, sore throat, cough, body aches, and fatigue.',
      'image': 'https://www.kibrispdr.org/download?file=https://s3.eu-west-2.wasabisys.com/cdn.kibrispdr.org/data/395/gambar-kartun-orang-batuk-9.png',
      'medicines': [
        {'name': 'Noza', 'description': 'Noza is used for the relief of cold and flu symptoms such as nasal congestion, sneezing, and fever.', 'price': 4.250, 'image': 'https://down-id.img.susercontent.com/file/id-11134207-7qul9-lhwuvend7p47be@resize_w450_nl.webp'},
        {'name': 'Decolgen', 'description': 'Decolgen is effective for relieving cough, nasal congestion, and other symptoms of the common cold and flu.', 'price': 13.400, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7rasf-m1qw04l9uesce1@resize_w450_nl.webp'},
        {'name': 'Paratusin', 'description': 'Paratusin soothes throat irritation, helping to relieve coughing and sore throat symptoms caused by colds and flu.', 'price': 17.100, 'image': 'https://down-id.img.susercontent.com/file/id-11134207-7r991-lzsw9s89lde09f@resize_w450_nl.webp'},
        {'name': 'Mixagrip', 'description': 'Mixagrip is designed to help relieve fever, body aches, and cold symptoms, providing relief from flu-like illnesses.', 'price': 6.000, 'image': 'https://down-id.img.susercontent.com/file/id-11134207-7r992-lzszaq9m605hfd@resize_w450_nl.webp'},
        {'name': 'Procold', 'description': 'Procold reduces symptoms of the common cold such as nasal congestion, coughing, and sore throat.', 'price': 96.550, 'image': 'https://down-id.img.susercontent.com/file/870632b663f49c754c90386255547f18@resize_w450_nl.webp'},
        {'name': 'Rhinos SR', 'description': 'Rhinos SR treats cold symptoms, particularly nasal congestion and sinus pressure, providing relief for blocked nasal passages.', 'price': 130.000, 'image': 'https://down-id.img.susercontent.com/file/sg-11134201-7rd4d-lvoebeyxf8mae8@resize_w450_nl.webp'},
        {'name': 'Sanaflu', 'description': 'Sanaflu provides relief from flu symptoms such as fever, headache, body aches, and nasal congestion.', 'price': 3.250, 'image': 'https://down-id.img.susercontent.com/file/sg-11134201-7rdx2-m146lpi5vms9a8@resize_w450_nl.webp'},
        {'name': 'Benadryl', 'description': 'Benadryl is an antihistamine used to relieve allergy symptoms, cold symptoms, and itching caused by hives or other allergic reactions.', 'price': 27.630, 'image': 'https://down-id.img.susercontent.com/file/sg-11134201-7reoi-m1o8tg2h2id21b@resize_w450_nl.webp'},
        {'name': 'Actifed', 'description': 'Actifed helps ease cold and flu symptoms, particularly nasal congestion and sneezing, while also alleviating sinus pressure.', 'price': 62.200, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7r98v-lzem6qy8jr5xa8@resize_w450_nl.webp'}
      ],
    },
    {
      'name': 'Headache',
      'description': 'A headache is pain in the head or upper neck, often caused by tension, dehydration, stress, or underlying conditions like migraines or sinusitis.',
      'image': 'https://img.lovepik.com/original_origin_pic/18/06/14/b4bf029a1cb79dafff197b99d5abcb4b.png_wh860.png',
      'medicines': [
        {'name': 'Paracetamol 500mg', 'description': 'Paracetamol 500mg is a common pain reliever and fever reducer, used to alleviate headaches, muscle aches, and reduce fever.', 'price': 12.936, 'image': 'https://down-id.img.susercontent.com/file/sg-11134201-22120-w4g9hk1vjrkv3d@resize_w450_nl.webp'},
        {'name': 'Panadol Extra 10 Kaplet', 'description': 'Panadol Extra contains paracetamol combined with caffeine, providing enhanced pain relief for headaches, migraines, and general body pain.', 'price': 13.942, 'image': 'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/health-professionals/en_PK/pain-relief/packshots/Panadol_Extra_PS.jpg?auto=format'},
        {'name': 'SANMOL 500 MG BOX 100 TABLET', 'description': 'SANMOL 500mg used to relieve mild to moderate pain and reduce fever.', 'price': 47.810, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7qukw-litninurw4lzc6@resize_w450_nl.webp'},
        {'name': 'BODREX FLU&BATUK 4 KAPLET', 'description': 'BODREX Flu & Cough is a combination medication used to relieve flu symptoms, including fever, headaches, and cough. Each pack contains 4 caplets.', 'price': 2.500, 'image': 'https://down-id.img.susercontent.com/file/sg-11134201-7rdwz-m09rr7uzx51626@resize_w450_nl.webp'},
        {'name': 'Paramex', 'description': 'Paramex is a popular pain reliever and fever reducer in Indonesia, typically used for headaches, toothaches, and minor aches and pains.', 'price': 3.000, 'image': 'https://down-id.img.susercontent.com/file/id-11134207-7r98y-m047k6fmo4txf2@resize_w450_nl.webp'},
        {'name': 'OSKADON SP', 'description': 'OSKADON SP is a combination medication for pain relief, typically used to treat tension headaches, migraines, and muscular pain.', 'price': 1.990, 'image': 'https://down-id.img.susercontent.com/file/id-11134207-7rasc-m2hkqo7vxqoz53@resize_w450_nl.webp'},
        {'name': 'Saridon Extra', 'description': 'Saridon Extra is an over-the-counter painkiller that combines paracetamol, propyphenazone, and caffeine to provide fast relief from headaches, migraines, and body aches.', 'price': 9.500, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7rasa-m1hxv5l3di2hf4@resize_w450_nl.webp'},
        {'name': 'Poldan Mig Box 100 Kaplet', 'description': 'Poldan Mig is a medication designed to alleviate migraine pain, combining pain relief and anti-inflammatory properties. This box contains 100 tablets.', 'price': 111.625, 'image': 'https://down-id.img.susercontent.com/file/sg-11134201-7repu-m2xtvcr1yk9wa3@resize_w450_nl.webp'},
        {'name': 'Bintang Toedjoe Puyer No.16 (48 Sachet)', 'description': 'Bintang Toedjoe Puyer No.16 is a herbal remedy commonly used in Indonesia to treat flu symptoms, cold, and cough.', 'price': 44.900, 'image': 'https://down-id.img.susercontent.com/file/28fbe349d2d7d65473c79b0befe03aee@resize_w450_nl.webp'}
      ],
    },
    {
      'name': 'Allergy',
      'description': 'Allergies occur when the immune system reacts to substances (allergens) like pollen, dust, or certain foods, causing symptoms such as sneezing, itching, and swelling.',
      'image': 'https://st4.depositphotos.com/16244452/30216/v/1600/depositphotos_302161084-stock-illustration-allergy-symptoms-line-color-icon.jpg',
      'medicines': [
        {'name': 'Cetirgi 10 mg 10 Tablet', 'description': 'Cetirgi is an antihistamine used to relieve allergy symptoms such as sneezing, runny nose, and itching.', 'price': 56.900, 'image': 'https://down-id.img.susercontent.com/file/id-11134207-7r98x-lwsaxlfj2nmm2d@resize_w450_nl.webp'},
        {'name': 'Lerzin 10 mg 10 Capsule', 'description': 'Lerzin is an antihistamine used to treat allergic conditions like hay fever and hives, reducing symptoms like itching and swelling.', 'price': 5.000, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7rash-m1hxr38vivz311@resize_w450_nl.webp'},
        {'name': 'Cortamine Sirup 60 ml', 'description': 'Cortamine syrup is a medication for treating allergic reactions, offering relief from symptoms like inflammation and swelling.', 'price': 81.600, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7ras9-m1hxrws4aylt24@resize_w450_nl.webp'},
        {'name': 'Dexteem Plus 10 Tablet', 'description': 'Dexteem Plus is used to manage allergy symptoms and other inflammatory conditions by reducing histamine effects in the body.', 'price': 5.200, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7rasl-m1hxqcy60a7lc2@resize_w450_nl.webp'},
        {'name': 'Inclarin 10 mg 10 Tablet', 'description': 'Inclarin is an antihistamine used to treat hay fever and other allergic conditions by blocking histamine receptors.', 'price': 87.200, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7rasg-m1hxsp3iv74fde@resize_w450_nl.webp'},
        {'name': 'Interhistin 50 mg 10 Tablet', 'description': 'Interhistin is an antihistamine that helps in treating allergic rhinitis, urticaria, and other allergy-related conditions.', 'price': 14.500, 'image': 'https://down-id.img.susercontent.com/file/id-11134207-7qul5-ljnp7rah3gv68e@resize_w450_nl.webp'},
        {'name': 'Winatin 10 mg 10 Tablet', 'description': 'Winatin is an allergy medication used to relieve symptoms like sneezing, itching, and watery eyes caused by seasonal allergies.', 'price': 10.400, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7r98r-lmczvwyon0nba5@resize_w450_nl.webp'},
        {'name': 'Ryvel Sirup 60 ml', 'description': 'Ryvel syrup is used for the treatment of allergic rhinitis and other allergic conditions by blocking histamine release.', 'price': 88.000, 'image': 'https://down-id.img.susercontent.com/file/id-11134201-7qul2-lhfzwavh6s1re2@resize_w450_nl.webp'},
      ],
    },
    {
      'name': 'Indigestion',
      'description': 'Indigestion, or dyspepsia, refers to discomfort in the stomach area, often accompanied by bloating, nausea, and belching. It can result from overeating, spicy foods, or stress.',
      'image': 'https://img.pikbest.com/png-images/20190920/cartoon-fat-stomach-pain-element_2559096.png!w700wp',
      'medicines': [
        {'name': 'Buscopan 10 mg 10 Tablet', 'description': 'Buscopan is an antispasmodic medication that helps relieve abdominal cramps, bloating, and discomfort associated with indigestion and other gastrointestinal disorders.', 'price': 45.500, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/03/13031150/Buscopan-10-mg-10-Tablet.jpg'},
        {'name': 'Mefinal 500 mg 10 Kaplet', 'description': 'Mefinal is used to relieve pain and discomfort associated with indigestion, menstrual cramps, and mild abdominal pain. It contains mefenamic acid, an anti-inflammatory drug.', 'price': 19.500, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/03/13031415/Mefinal-500-mg-10-Kaplet.jpg'},
        {'name': 'Colidan 100 mg 10 Kapsul', 'description': 'Colidan is a medication used to treat digestive issues such as bloating and indigestion. It helps to regulate the stomach and intestines for better digestion.', 'price': 85.000, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/03/13031508/Colidan-100-mg-10-Kapsul.jpg'},
        {'name': 'Scopma Plus 10 Kaplet', 'description': 'Scopma Plus is an effective treatment for stomach discomfort and indigestion. It works by relaxing the muscles of the digestive system, easing cramps and spasms.', 'price': 33.000, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/15023622/Scopma-Plus-10-Kaplet-2.jpg'},
        {'name': 'Spasminal 10 Tablet', 'description': 'Spasminal is used to relieve gastrointestinal spasms, bloating, and pain caused by indigestion. It contains a combination of antispasmodic and anti-inflammatory ingredients.', 'price': 88.000, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/15023654/Spasminal-10-Tablet-1.jpg'},
        {'name': 'Polysilane Suspensi 100 ml', 'description': 'Polysilane is an oral suspension that helps to reduce bloating, indigestion, and excess stomach acid. It works by neutralizing stomach acid and coating the digestive tract.', 'price': 36.600, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/03/13031241/Polysilane-Suspensi-100-ml.jpg'},
        {'name': 'Norit 40 Tablet', 'description': 'Norit is an activated charcoal tablet used to treat indigestion, bloating, and flatulence. It works by absorbing excess gas and toxins in the digestive system.', 'price': 17.000, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/03/13031328/Norit-40-Tablet.jpg'}
      ],
    },
    {
      'name': 'Cough',
      'description': 'A cough is a reflex action to clear the airways of irritants. It can be caused by infections, allergies, or irritants, and may be dry or productive (with mucus).',
      'image': 'https://w7.pngwing.com/pngs/270/719/png-transparent-cough-man-coronavirus-icon.png',
      'medicines': [
        {'name': 'Actifed Plus Expectorant Sirup 60 ml', 'description': 'Helps relieve cough and congestion by thinning mucus, making it easier to expel.', 'price': 68.500, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/04/03015701/Actifed-Plus-Expectorant-Sirup-60-ml-Hijau.jpg'},
        {'name': 'Bisolvon Extra Sirup 125 ml', 'description': 'Bisolvon Extra is an expectorant syrup that helps loosen and clear mucus from the airways, making it easier to cough up.', 'price': 96.900, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/04/03020046/Bisolvon-Extra-Sirup-125-ml-1.jpg'},
        {'name': 'Sanadryl Expectorant Sirup 120 ml', 'description': 'Helps relieve coughing and congestion by loosening mucus and soothing the throat.', 'price': 24.100, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/04/03015815/Sanadryl-Expectorant-Sirup-120-ml.jpg'},
        {'name': 'OBH Combi Batuk Berdahak Menthol', 'description': 'Menthol-flavored cough syrup designed to relieve cough and loosen mucus.', 'price': 18.200, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/04/03020221/OBH-Combi-Batuk-Berdahak-Menthol-Sirup-100-ml.jpg'},
        {'name': 'Silex Sirup 100 ml', 'description': 'Silex Syrup is an effective treatment for dry and persistent cough. It soothes the throat and helps suppress coughing, providing relief from irritation in the respiratory tract.', 'price': 80.000, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/04/03020130/Silex-Sirup-100-ml-1.jpg'},
        {'name': 'Rexcof Plus Sirup 60 ml', 'description': 'Rexcof Plus Syrup is a combination medication used to treat coughing and congestion. It has both antitussive and expectorant properties.', 'price': 22.000, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/04/03015904/Rexcof-Plus-Sirup-60-ml.jpg'},
        {'name': 'Obat Batuk Cap Ibu & Anak Sirup 75 ml', 'description': 'Suitable for both adults and children. It helps relieve cough and clear the throat.', 'price': 32.900, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/04/03020256/Obat-Batuk-Cap-Ibu-Anak-Sirup-75-ml-1.jpg'}
      ]
    },
    {
      'name': 'Diabetes',
      'description': 'Diabetes is a chronic condition where the body cannot properly regulate blood sugar levels. Type 1 and Type 2 diabetes can lead to symptoms like excessive thirst, frequent urination, and fatigue.',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREBYNp5i_q2Bv0A4OrqeHYLS74Rzn3DnLPIkJjJcum4SYmi6jjoYj5IBo9BB_iOr-sZYQ&usqp=CAU',
      'medicines': [
        {'name': 'Lipesco 10 Kaplet', 'description': 'Lipesco is used to help control blood sugar levels in people with diabetes. It works by improving insulin sensitivity and reducing the amount of sugar produced by the liver.', 'price': 84.600, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/19024435/Lipesco-10-Kaplet.jpg'},
        {'name': 'Metformin 500 mg 10 Strip (10 Tablet/Strip)', 'description': 'Helps lower blood sugar by making the body more sensitive to insulin.', 'price': 84.600, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/19024510/Metformin-500-mg-10-Strip.jpg'},
        {'name': 'Glucophage 500 mg 10 Tablet', 'description': 'Glucophage is a brand of metformin used to treat type 2 diabetes. It helps to regulate blood sugar levels by improving insulin sensitivity and reducing liver glucose production.', 'price': 18.200, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/19024553/Glucophage-500-mg-3-Strip.jpg'},
        {'name': 'Diamicron MR 60 mg 15 Tablet', 'description': 'Diamicron MR is used for the treatment of type 2 diabetes. It helps to control blood sugar levels by increasing insulin production from the pancreas and improving insulin sensitivity.', 'price': 152.300, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/19024623/Diamicron-MR-60-mg.jpg'},
        {'name': 'Jardiance 10 mg 10 Tablet', 'description': 'Jardiance is an SGLT2 inhibitor that helps lower blood sugar in adults with type 2 diabetes by preventing glucose reabsorption in the kidneys.', 'price': 269.200, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/19024644/Jardiance-10-mg-10-Tablet.jpg'},
        {'name': 'Acarbose 100 mg 10 Tablet', 'description': 'Acarbose is an alpha-glucosidase inhibitor that helps manage blood sugar levels by slowing the breakdown of carbohydrates.', 'price': 12.000, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/19024707/Acarbose-100-mg.jpg'}
      ]
    },
    {
      'name': 'Helminthiasis',
      'description': 'Helminthiasis refers to parasitic worm infections, such as roundworms or tapeworms, affecting the intestines and sometimes other organs. Symptoms include abdominal pain, diarrhea, and fatigue.',
      'image': 'https://asset.kompas.com/crops/iuaGmPiFmHCGcn4Z08jvPRj2qUE=/0x0:1000x667/1200x800/data/photo/2021/08/19/611d7222e95e8.jpg',
      'medicines': [
        {'name': 'Combantrin 250 mg', 'description': 'Combantrin is an anti-worm medication used to treat intestinal worm infections such as pinworms, roundworms, and hookworms. It works by paralyzing the worms', 'price': 19.300, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/08/09035035/Combantrin-250-mg.jpg'},
        {'name': 'Vermox Tablet 500 mg', 'description': 'Vermox is an anti-parasitic medication used to treat various types of worm infections, including pinworms, roundworms, and hookworms', 'price': 23.800, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/03041012/Vermox-Tablet-500-mg.jpg'},
        {'name': 'Konvermex Suspensi 250 mg 10 ml', 'description': 'Suspension used to treat worm infestations, includ roundworms and pinworms.', 'price': 17.500, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/03041059/Konvermex-Suspensi-250-mg-10-ml.jpg'},
        {'name': 'Combantrin 125 mg 4 Tablet', 'description': 'Combantrin 125 mg tablets are used to treat intestinal worm infestations. The medication works by paralyzing the worms and allowing them to be removed naturally from the intestines.', 'price': 19.700, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/03041239/Combantrin-125-mg-4-Tablet.jpg'},
        {'name': 'Konvermex Suspensi 125 mg', 'description': 'Konvermex Suspensi 125 mg is an anti-worm treatment, effective against a variety of intestinal worms. The suspension form is easier to administer to children or individuals', 'price': 16.600, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/08/09035040/Konvermex-Suspensi-125-mg.jpg'},
        {'name': 'Combantrin Jeruk Sirup 10 ml', 'description': 'Combantrin Jeruk Syrup is a liquid form of the anti-worm medication, flavored with orange. It is used to treat intestinal worm infestations.', 'price': 17.500, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/08/09035045/Combantrin-Jeruk-Sirup.jpg'},
        {'name': 'Vermoran 500 mg Tablet', 'description': 'Vermoran is an anti-worm tablet that treats a variety of worm infections, including roundworms, pinworms, and hookworms. It works by interfering with the worms.', 'price': 8.100, 'image': 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/08/09035050/Vermoran-500-mg.jpg'}
      ]
    },
    {
      'name': 'DENV ',
      'description': 'Dengue fever is a viral infection transmitted by mosquitoes, causing high fever, severe headache, joint and muscle pain, rash, and sometimes bleeding.',
      'image': 'https://cdn1-production-images-kly.akamaized.net/T5tdmjoHNQQIPZD8tzj-s-OsABc=/500x500/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3246880/original/001616100_1600854571-mosquito-danger-sign-template-element-poster-card-emblem-logo-illustration_124137-1506.jpg',
      'medicines': [
        {"name": "Fu Fang E Jiao Jiang 20 ml 12 Botol", "description": "Fu Fang E Jiao Jiang is a traditional Chinese medicine designed to support immune.", "price": 237.600, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/04/29031446/Fu-Fang-E-Jiao-Jiang-20-ml-12-Botol.jpg"},
        {"name": "Al Afiat Angkak 60 Kapsul", "description": "Al Afiat Angkak is a herbal supplement that helps in boosting the immune system, improving overall health, and supporting recovery from viral infections.", "price": 51.800, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/03/06041757/Al-Afiat-Angkak-60-Kapsul.jpg"},
        {"name": "Isoprinosine Sirup 60 ml", "description": "Isoprinosine Sirup is an antiviral medication that helps to boost the immune system and is commonly used in the treatment of viral infections like dengue and other flu-like illnesses.", "price": 138.700, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/26024320/Isoprinosine-Sirup-60-ml.jpg"},
        {"name": "Isoprinosine 500 mg 8 Tablet", "description": "Isoprinosine is an antiviral medication that strengthens the immune system and helps treat viral infections such as the common cold and dengue fever.", "price": 132.900, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/26024333/Isoprinosine-500-mg-8-Tablet.jpg"},
        {"name": "Prove D3-5000 IU 10 Tablet", "description": "Prove D3-5000 IU is a vitamin D supplement that supports the immune system, helping to improve the body's defense mechanisms against infections.", "price": 57.300, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/03/06043535/Prove-D3-5000-IU-10-Tablet-Kunyah.jpg"}
      ]
    },
    {
      'name': 'Asthma ',
      'description': 'Asthma is a chronic condition where the airways become inflamed and narrow, causing difficulty in breathing, wheezing, and coughing, often triggered by allergens or environmental factors.',
      'image': 'https://ners.unair.ac.id/site/images/Lihat/images_43.jpeg',
      'medicines': [
        {"name": "Ventolin Sirup 100 ml", "description": "Ventolin Syrup contains salbutamol, which is used to treat asthma symptoms by relaxing the muscles in the airways, making it easier to breathe.", "price": 61.800, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/29011456/Ventolin-Sirup-100-ml-3.jpg"},
        {"name": "Lasal Expectorant Sirup 100 ml", "description": "Lasal Expectorant Syrup helps loosen mucus in the airways, making it easier to cough up and clear the airways in respiratory conditions like asthma.", "price": 43.900, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/29011508/Lasal-Expectorant-Sirup.jpg"},
        {"name": "Lasal 2 mg 10 Kapsul", "description": "Lasal 2 mg is a medication used to relieve symptoms of asthma by reducing inflammation in the airways and improving airflow.", "price": 23.400, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/29011525/Lasal-2-mg.jpg"},
        {"name": "Proast Sirup 60 ml", "description": "Proast Syrup is used to relieve coughing and other symptoms associated with asthma and respiratory conditions by helping to clear mucus from the airways.", "price": 6.900, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/29011537/Proast-Sirup-60-ml-2.jpg"},
        {"name": "Glisend Sirup 60 ml", "description": "Glisend Syrup is a medication that helps to relieve asthma symptoms by reducing airway constriction and improving breathing.", "price": 9.600, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/29011548/Glisend-Sirup-60-ml-2.jpg"},
        {"name": "Berotec MDI 100 mcg/Puff 10 ml", "description": "Berotec MDI (Metered Dose Inhaler) contains fenoterol, which helps to relax the muscles in the airways, making it easier to breathe during an asthma attack.", "price": 269.600, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/29011600/Berotec-MDI-100.jpg"},
        {"name": "Bricasma Turbuhaler 0.5 mg", "description": "Bricasma Turbuhaler is a long-acting bronchodilator used to treat asthma symptoms by relaxing the muscles in the airways and preventing asthma attacks.", "price": 187.500, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/06/29011611/Bricasma-Turbuhaler.jpg"}
      ]
    },
    {
      "name": "Hipertensi",
      "description": "Hypertension, or high blood pressure, is a common condition where the force of the blood against the artery walls is too high, which can lead to serious health problems like heart disease and stroke. It often has no symptoms, but regular monitoring is important.",
      "image": "https://img.lovepik.com/element/40180/7650.png_860.png",
      "medicines": [
        {"name": "Amlodipine 10 mg 10 Tablet", "description": "Amlodipine is a calcium channel blocker used to treat high blood pressure and chest pain by relaxing blood vessels, allowing blood to flow more easily.", "price": 28.000, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/05/24002704/Amlodipine-10-mg-10-Tablet.jpg"},
        {"name": "Amlodipine 5 mg 10 Tablet", "description": "Amlodipine 5 mg is used for controlling high blood pressure and reducing the risk of heart disease by relaxing the blood vessels to improve blood flow.", "price": 14.900, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/05/24002749/Amlodipine-5-mg-10-Tablet.jpg"},
        {"name": "Candesartan Dexa 8 mg 3 Strip (10 Tablet/Strip)", "description": "Candesartan is an angiotensin II receptor blocker (ARB).", "price": 22.600, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/05/24002828/Candesartan-Dexa-8-mg-3-Strip-10-TabletStrip-Obat-Rutin.jpg"},
        {"name": "Candesartan Dexa 16 mg 3 Strip (10 Tablet/Strip)", "description": "Candesartan 16 mg is an increased dose of Candesartan for treating hypertension.", "price": 67.800, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/03024642/Candesartan-Dexa-1.jpg"},
        {"name": "Spironolactone 25 mg 10 Tablet", "description": "Spironolactone is a potassium-sparing diuretic used to treat high blood pressure, heart failure, and conditions that cause excess fluid retention.", "price": 5.400, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/05/24002951/Spironolactone-25-mg-10-Tablet.jpg"},
        {"name": "Bisoprolol 2.5 mg 10 Tablet", "description": "Bisoprolol is a beta-blocker medication used to treat high blood pressure and heart failure by reducing the heart rate and easing the workload on the heart.", "price": 49.800, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/05/24003027/Bisoprolol-2.5-mg-10-Tablet.jpg"},
        {"name": "Adalat Oros 30 mg 10 Tablet", "description": "Adalat Oros is a long-acting calcium channel blocker used to lower high blood pressure and prevent chest pain by relaxing the blood vessels and improving blood flow.", "price": 119.500, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/05/24003111/Adalat-Oros-30-mg-10-Tablet.jpg"},
        {"name": "Hydrochlorothiazide (HCT) 25 mg 10 Tablet", "description": "Helps lower blood pressure by reducing excess fluid and sodium", "price": 2.500, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/07/03024743/Hydrochlorothiazide-HCT.jpg"}
      ]
    },
    {
      'name': 'Bronchitis ',
      'description': 'Bronchitis is inflammation of the bronchial tubes, often caused by a viral infection. It leads to coughing, mucus production, and difficulty breathing. It can be acute or chronic.',
      'image': 'https://media.istockphoto.com/id/1421878861/id/vektor/batuk-pria-muda-yang-sakit-terisolasi-ilustrasi-kartun-gaya-datar-vektor.jpg?s=612x612&w=0&k=20&c=Rzpcjk_dR3TsnSzKiLB5xyqQYA8jr_B4emkwt1Y6dNo=',
      'medicines': [
        {"name": "Prome Sirup 100 ml", "description": "Prome Sirup is used to treat cough and respiratory conditions like bronchitis by helping to loosen mucus and soothe the airways.", "price": 70.000, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/02/21074306/Prome-Sirup-1.jpg"},
        {"name": "N-Ace 200 mg 10 Capsul", "description": "N-Ace is an anti-inflammatory and antioxidant that helps reduce symptoms of respiratory infections like bronchitis by easing inflammation in the airways.", "price": 39.500, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/02/21074323/N-Ace.jpg"},
        {"name": "L-Acys 600 mg 2 Tablet Effervescent", "description": "L-Acys is used to treat respiratory conditions", "price": 33.300, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/02/21074341/L-Acys-600.jpg"},
        {"name": "Nytex Dry Syrup 150 ml", "description": "Nytex Dry Syrup is commonly used for treating cough and bronchitis symptoms, helping to alleviate coughing and mucus production while soothing the throat.", "price": 42.100, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/02/21074402/Nytex-Dry-Syrup.jpg"},
        {"name": "Mucos Sirup 60 ml", "description": "Mucos Sirup is used to treat excessive mucus production due to conditions like bronchitis. It helps thin the mucus, making it easier to cough up and clear the airways.", "price": 23.600, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/04/18104515/Mucos-Sirup-60-ml.jpg"}
      ]
    },
    {
      "name": "Hypotension",
      "description": "Hypotension, or low blood pressure, occurs when blood pressure levels are abnormally low, leading to symptoms such as dizziness, fainting, and fatigue. It can be caused by various factors, including dehydration, heart problems, and severe infections.",
      "image": "https://media.istockphoto.com/id/1479112100/id/vektor/pengukuran-tekanan-darah-dengan-tonometer-pemeriksaan-kesehatan-hipotensi-dan-penyakit.jpg?s=612x612&w=0&k=20&c=YIL1BMIgMcJo7FTpA2puDJAc6ykfeoYLhqZABxVGf98=",
      "medicines": [
        {"name": "Sangobion 10 Kapsul", "description": "Sangobion is a supplement that contains iron and other vitamins, commonly used to improve blood circulation and treat low blood pressure associated with anemia.", "price": 18.600, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/02/02005751/sangobion.jpg"},
        {"name": "Pharmaton Vit 5 Kaplet", "description": "Pharmaton Vit 5 is a multivitamin supplement that helps support overall health, boosts energy, and improves circulation", "price": 29.900, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/11/20071706/Pharmaton-Vit-5-Kaplet.jpg"},
        {"name": "Provital Plus 5 Kapsul", "description": "Provital Plus contains vitamins and minerals that help maintain healthy blood pressure levels, improve energy, and support cardiovascular health", "price": 41.000, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/11/20071814/Provital-Plus.jpg"},
        {"name": "Brand’s Essence Of Chicken", "description": "Brand’s Essence of Chicken with American Ginseng is a nutritional supplement known for boosting energy and enhancing circulation", "price": 18.500, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/11/20071729/Brands-Essence-Of-Chicken-With-American-Ginseng.jpg"},
        {"name": "Folavit 400 mcg 10 Tablet", "description": "Folavit is a folic acid supplement used to treat folate deficiency, which can contribute to low blood pressure and fatigue, especially in pregnant women or those with inadequate diet.", "price": 12.600, "image": "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/02/02005817/folavit.jpg"}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text('Disease Catalog'),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: diseaseCatalog.length,
        itemBuilder: (context, index) {
          final disease = diseaseCatalog[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            elevation: 6,
            shadowColor: Colors.grey.withOpacity(0.3),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicineListPage(
                      diseaseName: disease['name'],
                      medicines: disease['medicines'],
                    ),
                  ),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    child: Image.network(
                      disease['image'],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            disease['name'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            disease['description'],
                            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MedicineListPage extends StatelessWidget {
  final String diseaseName;
  final List<Map<String, dynamic>> medicines;

  MedicineListPage({required this.diseaseName, required this.medicines});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('$diseaseName Medicines'),
        backgroundColor: Colors.teal, // Updated secondary color
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: medicines.length,
        itemBuilder: (context, index) {
          final medicine = medicines[index];
          return Card(
            color: Colors.teal[50],
            elevation: 6,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MedicineDetailPage(medicine: medicine);
                  },
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      medicine['image']!,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      medicine['name']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0), // Adjust spacing
                    child: Text(
                      'Rp ${medicine['price'].toStringAsFixed(3)}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MedicineDetailPage extends StatelessWidget {
  final Map<String, dynamic> medicine;

  MedicineDetailPage({required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            medicine['name']!,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
          const SizedBox(height: 10),
          Image.network(
            medicine['image']!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 15),
          Text(
            'Description: ${medicine['description']}',
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
          const SizedBox(height: 10),
          Text(
            'Price: Rp ${medicine['price'].toStringAsFixed(3)}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            ),
          ),
        ],
      ),
    );
  }
}