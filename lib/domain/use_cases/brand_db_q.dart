import '../../data/data_sources/local_database.dart';
import '../entities/entities_export.dart';

class BrandsQueries {
  static final BrandsQueries instance = BrandsQueries._init();
  BrandsQueries._init();

  Future<BrandModel> insertData(BrandModel brand) async {
    final db = await LocalDB.instance.database;
    final id = await db.insert(brandsTable, brand.toDB());

    return brand.copyWith(id: id);
  }

  Future<List<BrandModel>> fetchAllData() async {
    final db = await LocalDB.instance.database;
    const orderBy = '${BrandFields.name} ASC';
    final fetchResult = await db.query(brandsTable, orderBy: orderBy);

    return fetchResult.map((e) => BrandModel.fromDB(e)).toList();
  }

  Future<BrandModel> fetchSingleData(int id) async {
    final db = await LocalDB.instance.database;

    final fetchResult = await db.query(
      brandsTable,
      columns: BrandFields.values,
      where: '${BrandFields.id} = ?',
      whereArgs: [id],
    );

    if (fetchResult.isNotEmpty) {
      return BrandModel.fromDB(fetchResult.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<int> updateData(BrandModel brand) async {
    final db = await LocalDB.instance.database;

    return db.update(
      brandsTable,
      brand.toDB(),
      where: '${BrandFields.id} = ?',
      whereArgs: [brand.id],
    );
  }

  Future<int> deleteData(BrandModel brand) async {
    final db = await LocalDB.instance.database;
    return db.delete(
      brandsTable,
      where: '${BrandFields.id} = ?',
      whereArgs: [brand.id],
    );
  }
}
