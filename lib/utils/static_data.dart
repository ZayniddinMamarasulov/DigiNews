import 'package:news_app/models/author.dart';
import 'package:news_app/models/carousel_item.dart';
import 'package:news_app/models/news.dart';

class StaticData {
  static String IS_LOG_IN = "is_log_in";

  static List<CarouselItem> popularBanners = [
    CarouselItem(
        'Omikron O‘zbekistonda. SSV ehtiyot choralari kuchaytirilishini ma’lum qildi',
        'https://storage.kun.uz/source/thumbnails/_medium/8/pQiktjnCR5nls5PpVVh667W0Cc_CsHi9_medium.jpg',
        Author('kun.uz', 'kun.uz rasm'),
        5),
    CarouselItem(
        'Maktablarda ham qishki ta’til uzaytirildi',
        'https://storage.kun.uz/source/8/ZXanKouRm369UYPG1m2hfHVziJbnbUJZ.jpg',
        Author('kun.uz', 'kun.uz rasm'),
        6),
    CarouselItem(
        'Honor buklanuvchi smartfonini taqdim etdi',
        'https://storage.kun.uz/source/8/5X73logbix8KzHlW2yu-16dIDHIRgCGd.jpg',
        Author('kun.uz', 'kun.uz rasm'),
        7),
  ];

  static List<News> latestNews = [
    News(
        category: 'Mahalliy',
        image:
            'https://storage.kun.uz/source/8/ZXanKouRm369UYPG1m2hfHVziJbnbUJZ.jpg',
        title: 'Maktablarda ham qishki ta’til uzaytirildi',
        readingTime: 4,
        isSaved: false,
        content:
            "Ta’kidlanishicha, Kinematografiya agentligi direktori va bir vaqtning o‘zida subsidiya mablag‘larini taqsimlash bo‘yicha qarorlar qabul qilish vakolatiga ega Badiiy kengash raisi – Firdavs Abduxoliqov subsidiya mablag‘larining taqsimlanishi va kontragentni tanlash jarayonida yaqin qarindoshlari benefitsiar bo‘lgan “Master Media Production and Broadcast” MChJ (ta’sischilari: Sharapova F.S. – F.Abduxoliqovning turmush o‘rtog‘i 70%, Rashidova A.F. – F.Abduxoliqovning qizi 20%, Abduxoliqov A.F. – F.Abduxoliqovning o‘g‘li – 10%) bilan manfaatlar to‘qnashuviga ega bo‘lsa-da, bu holatni bartaraf qilish choralarini ko‘rmasdan, mazkur jamiyat manfaatlarini yoqlab ovoz berishda va qarorlar qabul qilish jarayonida bevosita ishtirok etgan."),
    News(
        category: 'Texno',
        image:
            'https://storage.kun.uz/source/8/5X73logbix8KzHlW2yu-16dIDHIRgCGd.jpg',
        title: 'Honor buklanuvchi smartfonini taqdim etdi',
        readingTime: 7,
        isSaved: false,
        content:
            "Sog‘liqni saqlash vazirligi va Sanitariya-epidemiologik osoyishtalik va jamoat salomatligi xizmatining taklifiga asosan koronavirus infeksiyasining yangi shtammi bolalar va yoshlar o‘rtasida tarqalishi yuqoriligini e’tiborga olgan holda barcha oliy (davlat, nodavlat, xususiy hamda xorijiy filiallar) va professional ta’lim muassasalari, akademik litseylarda (barcha ta’lim shakllari va turlari bo‘yicha) joriy yilning 24 yanvaridan boshlab, bir oy muddat davomida ta’lim olish tizimi masofaviy (onlayn) shaklda olib boriladi"),
    News(
        category: 'Texno',
        image:
            'https://storage.kun.uz/source/8/5X73logbix8KzHlW2yu-16dIDHIRgCGd.jpg',
        title: 'Honor buklanuvchi smartfonini taqdim etdi',
        readingTime: 7,
        isSaved: false,
        content:
            "Sog‘liqni saqlash vazirligi va Sanitariya-epidemiologik osoyishtalik va jamoat salomatligi xizmatining taklifiga asosan koronavirus infeksiyasining yangi shtammi bolalar va yoshlar o‘rtasida tarqalishi yuqoriligini e’tiborga olgan holda barcha oliy (davlat, nodavlat, xususiy hamda xorijiy filiallar) va professional ta’lim muassasalari, akademik litseylarda (barcha ta’lim shakllari va turlari bo‘yicha) joriy yilning 24 yanvaridan boshlab, bir oy muddat davomida ta’lim olish tizimi masofaviy (onlayn) shaklda olib boriladi"),
    News(
        category: 'Texno',
        image:
            'https://storage.kun.uz/source/8/5X73logbix8KzHlW2yu-16dIDHIRgCGd.jpg',
        title: 'Honor buklanuvchi smartfonini taqdim etdi',
        readingTime: 7,
        isSaved: false,
        content:
            "Sog‘liqni saqlash vazirligi va Sanitariya-epidemiologik osoyishtalik va jamoat salomatligi xizmatining taklifiga asosan koronavirus infeksiyasining yangi shtammi bolalar va yoshlar o‘rtasida tarqalishi yuqoriligini e’tiborga olgan holda barcha oliy (davlat, nodavlat, xususiy hamda xorijiy filiallar) va professional ta’lim muassasalari, akademik litseylarda (barcha ta’lim shakllari va turlari bo‘yicha) joriy yilning 24 yanvaridan boshlab, bir oy muddat davomida ta’lim olish tizimi masofaviy (onlayn) shaklda olib boriladi"),
  ];
}
