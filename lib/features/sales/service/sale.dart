import '../repository/sale.dart';

class SaleService {
  final SaleRepository _saleRepository = SaleRepository();

  findAll() => _saleRepository.findAll();
}
