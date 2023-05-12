import '../entities/entities_export.dart';
import '../use_cases/brand_db_q.dart';

class BrandsRepository {
  static final BrandsRepository instance = BrandsRepository._init();
  BrandsRepository._init();

  final List<BrandModel> _brandsList = [];

  Future<void> fetchAllData() async {
    final List<BrandModel> lastBrandsList =
        await BrandsQueries.instance.fetchAllData();

    _brandsList
      ..clear()
      ..addAll(lastBrandsList);
  }

  Future<void> addBrand(BrandModel brand) async {
    if (brand.name.isNotEmpty && brand.latin.isNotEmpty) {
      await BrandsQueries.instance.insertData(brand);

      final List<BrandModel> lastBrandsList =
          await BrandsQueries.instance.fetchAllData();

      _brandsList
        ..clear()
        ..addAll(lastBrandsList);
    }
  }

  Future<bool> editBrand(
      BrandModel editedBrand, BrandModel originalBrand) async {
    bool? isEdited;

    fetchAllData();
    final int brandIndex = _brandsList.indexOf(originalBrand);

    if (editedBrand.name.isNotEmpty && editedBrand.latin.isNotEmpty) {
      await BrandsQueries.instance
          .updateData(
        BrandModel(
          id: originalBrand.id,
          name: editedBrand.name,
          latin: editedBrand.latin,
        ),
      )
          .then(
        (int response) {
          if (response == 0) {
            return isEdited = false;
          } else {
            _brandsList
              ..remove(originalBrand)
              ..insert(
                brandIndex,
                BrandModel(
                  id: originalBrand.id,
                  name: editedBrand.name,
                  latin: editedBrand.latin,
                ),
              );
            return isEdited = true;
          }
        },
      );
    }

    return isEdited ?? false;
  }

  List<BrandModel> get brandsList => _brandsList;
}
