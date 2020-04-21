abstract class ShippingPriceInterface {
  double value(double distance);
}

class ShippingPrice {
  ShippingPriceInterface type;
  double distance;

  ShippingPrice({this.type, this.distance});

  double calcule() {
    return type.value(distance);
  }
}
