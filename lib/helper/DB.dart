import 'package:animal/models/animal.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  static Database db;
  static String path;
  final String MAMMALTABLE = "mammalsAnimals";
  final String BIRDTABLE = "birdAnimals";
  final String FISHTABLE = "fishAnimals";
  final String REPTILETABLE = "reptileAnimals";

  DB._();

  initMammalDb() async {
    if (db != null) {
      return null;
    } else {
      path = join(await getDatabasesPath(), "animal.db");
      db = await openDatabase(path, version: 1,
          onCreate: (db, version) async {
        String query1 =
            "CREATE TABLE $MAMMALTABLE(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,image TEXT,info TEXT)";
        String query2 =
            "CREATE TABLE $BIRDTABLE(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,image TEXT,info TEXT)";
        String query3 =
            "CREATE TABLE $FISHTABLE(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,image TEXT,info TEXT)";
        String query4 =
            "CREATE TABLE $REPTILETABLE(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,image TEXT,info TEXT)";

        await db.rawQuery(query1);
        await db.rawQuery(query2);
        await db.rawQuery(query3);
        await db.rawQuery(query4);
      });
    }
  }

  insertMammalData(Animal animal) async {
    await initMammalDb();
    String query = "INSERT INTO $MAMMALTABLE(name,image,info) VALUES(?,?,?)";
    List arg = [animal.name, animal.image, animal.info];
    await db.rawInsert(query, arg);
  }

  deleteMammalData()async{
    await initMammalDb();
    String query = "DELETE FROM $MAMMALTABLE";
    await db.rawDelete(query);
  }
  getMammalData() async {
    await initMammalDb();
    String query = "SELECT * FROM $MAMMALTABLE";
    List res = await db.rawQuery(query);
    return List.generate(
      res.length,
      (i) => Animal.query(
        id: res[i]['id'],
        name: res[i]['name'],
        image: res[i]['image'],
        info: res[i]['info'],
      ),
    );
  }

  insertBirdData(Animal animal) async {
    await initMammalDb();
    String query = "INSERT INTO $BIRDTABLE(name,image,info) VALUES(?,?,?)";
    List arg = [animal.name, animal.image, animal.info];
    await db.rawInsert(query, arg);
  }

  deleteBirdData()async{
    await initMammalDb();
    String query = "DELETE FROM $BIRDTABLE";
    await db.rawDelete(query);
  }
  getBirdData() async {
    await initMammalDb();
    String query = "SELECT * FROM $BIRDTABLE";
    List res = await db.rawQuery(query);
    return List.generate(
      res.length,
          (i) => Animal.query(
        id: res[i]['id'],
        name: res[i]['name'],
        image: res[i]['image'],
        info: res[i]['info'],
      ),
    );
  }

  insertFishData(Animal animal) async {
    await initMammalDb();
    String query = "INSERT INTO $FISHTABLE(name,image,info) VALUES(?,?,?)";
    List arg = [animal.name, animal.image, animal.info];
    await db.rawInsert(query, arg);
  }

  deleteFishData()async{
    await initMammalDb();
    String query = "DELETE FROM $FISHTABLE";
    await db.rawDelete(query);
  }
  getFishData() async {
    await initMammalDb();
    String query = "SELECT * FROM $FISHTABLE";
    List res = await db.rawQuery(query);
    return List.generate(
      res.length,
          (i) => Animal.query(
        id: res[i]['id'],
        name: res[i]['name'],
        image: res[i]['image'],
        info: res[i]['info'],
      ),
    );
  }

  insertReptileData(Animal animal) async {
    await initMammalDb();
    String query = "INSERT INTO $REPTILETABLE(name,image,info) VALUES(?,?,?)";
    List arg = [animal.name, animal.image, animal.info];
    await db.rawInsert(query, arg);
  }

  deleteReptileData()async{
    await initMammalDb();
    String query = "DELETE FROM $REPTILETABLE";
    await db.rawDelete(query);
  }
  getReptileData() async {
    await initMammalDb();
    String query = "SELECT * FROM $REPTILETABLE";
    List res = await db.rawQuery(query);
    return List.generate(
      res.length,
          (i) => Animal.query(
        id: res[i]['id'],
        name: res[i]['name'],
        image: res[i]['image'],
        info: res[i]['info'],
      ),
    );
  }
}

DB dbh = DB._();
