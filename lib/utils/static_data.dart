import 'package:news_app/models/author.dart';
import 'package:news_app/models/carousel_item.dart';

class StaticData {
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
}
