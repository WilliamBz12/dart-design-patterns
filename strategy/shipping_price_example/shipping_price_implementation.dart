import 'shipping_price.dart';

class NormalPrice implements ShippingPriceInterface {
  @override
  double value(double distance) {
    return distance * 14;
  }
}

class SedexPrice implements ShippingPriceInterface {
  @override
  double value(double distance) {
    return distance * 13;
  }
}

class RetiradaPrice implements ShippingPriceInterface {
  @override
  double value(double distance) {
    return 0;
  }
}
