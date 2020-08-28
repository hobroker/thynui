import 'dart:convert';

String stringify(Map json, [bool beautify = false]) {
  var indent = beautify ? '  ' : '';
  var encoder = JsonEncoder.withIndent(indent);
  var string = encoder.convert(json);

  return string;
}
