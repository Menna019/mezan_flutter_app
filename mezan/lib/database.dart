import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NotesDatabase {
  static final NotesDatabase instance = NotesDatabase. _init();
  static Database ? _database;
  NotesDatabase._init();

  Future <Database> get database async {
    if(_database!= null) return _database!;
    _database = await _initDB ('notes.dp');
    return _database!;
  }
  Future <Database> _initDB (String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version:1,onCreate: _createDB );
  }
  Future _createDB (Database db , int version) async {
    await db.execute(
     '''
     CREATE TABLE notes (
    id INTEGER PRIMARY KEY AUTO INCREMENT NOT NULL,
    content TEXT NOT NULL,
     )
     '''
     );

    Future _createDB (Database db , int version) async {
    await db.execute(
     '''
     CREATE TABLE notes (
    id INTEGER SECONDARY KEY AUTO INCREMENT NOT NULL,
    content TEXT NOT NULL,
     )
     '''
     );

 Future _createDB (Database db , int version) async {
    await db.execute(
     '''
     CREATE TABLE notes (
    id INTEGER SECONDARY KEY AUTO INCREMENT NOT NULL,
    content TEXT NOT NULL,
     )
     '''
     );
}
Future <void> close() async {
  final db = await instance.database;
  db.close();
}
Future <void> addNote (String content) async{
final db = await instance.database;
await db.insert('notes', {'content': content,
'conflictAlgorithm' : ConflictAlgorithm.replace,
});
}
}
}
Future <List<Map<String,dynamic>>> getNotes() async{
final db = await instance.database;
return await db.query('notes');
}
Future <void> deleteNote (int id) async {
  final db = await instance.database;
  await db.delete('notes', where: 'id = ?' , whereArgs: [id]);
}
Future <void> updateNote (int id, String content) async{
final db = await instance.database;
await db.update('notes', {'content' : content},where: 'id = ?',whereArgs: [id]
);
}

  addNote(String s) {}
}