import 'package:floor/floor.dart';

import '../../../../domain/model/source.dart';

class SourceTypeConverter extends TypeConverter<Source?, String> {
  @override
  Source? decode(String databaseValue) {
    final List<String> results = databaseValue.split(',');
    return Source(id: results.first, name: results.last);
  }

  @override
  String encode(Source? value) {
    final String result = '${value?.id}, ${value?.name}';
    return result;
  }
}
