import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_i18n/loaders/decoders/json_decode_strategy.dart';
import 'package:thynui/modules/asset_path.dart';
import 'package:thynui/util/debug.dart';

void _missingTranslationHandler(key, locale) {
  var code = locale.languageCode;

  debug('Missing translation', '$key, languageCode: ${code}');
}

var i18nDelegate = FlutterI18nDelegate(
  translationLoader: FileTranslationLoader(
    fallbackFile: 'en',
    basePath: AssetPath.i18nDir,
    decodeStrategies: [JsonDecodeStrategy()],
  ),
  missingTranslationHandler: _missingTranslationHandler,
);
