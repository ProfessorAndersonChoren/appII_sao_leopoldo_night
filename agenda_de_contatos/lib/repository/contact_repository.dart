import 'package:agenda_de_contatos/repository/db_helper.dart';

class ContactRepository {
  static const _tableName = 'contacts';
  
  static Future<int> insert(Map<String, Object?> map) async {
    final db = await DBHelper.getInstancia();
    return await db.insert(_tableName, map);
  }
}
