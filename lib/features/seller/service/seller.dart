import '../repository/seller.dart';

class SellerService {
  final SellerRepository _sellerRepository = SellerRepository();

  findAll() => _sellerRepository.findAll();
}
