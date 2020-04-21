import 'shipping_price.dart';
import 'shipping_price_implementation.dart';

main() {
  final value = ShippingPrice(
    distance: 4.5,
    type: NormalPrice(),
  ).calcule();
  
  print(value);
}
