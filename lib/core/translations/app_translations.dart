import 'package:get/get.dart';
import 'ar-EG/ar_eg_translations.dart';
import 'en_US/en_us_translations.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'ar_EG': arEg,
      };
}
