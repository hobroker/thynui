import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_i18n/loaders/decoders/json_decode_strategy.dart';
import 'package:thynui/constants/asset_constants.dart';
import 'package:thynui/util/debug.dart';

void _missingTranslationHandler(key, locale) {
  var code = locale.languageCode;

  debug('Missing translation', '$key, languageCode: ${code}');
}

FlutterI18nDelegate I18nDelegate() {
  return FlutterI18nDelegate(
    translationLoader: FileTranslationLoader(
      fallbackFile: 'en',
      basePath: AssetConstants.i18nDir,
      decodeStrategies: [JsonDecodeStrategy()],
    ),
    missingTranslationHandler: _missingTranslationHandler,
  );
}
