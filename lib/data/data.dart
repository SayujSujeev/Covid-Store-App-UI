import 'package:covid_store_app/models/product.dart';
import 'package:covid_store_app/models/sanitization_product.dart';

final _proVacVenco = Product(
  name: 'Pro-Vac Venco',
  manufacture: 'baximco',
  description:
  'A COVID-19 vaccine manufacturing plant of the institute in Kunming, capital city of Yunnan Province, will be put into use in the second half of 2020.',
  price: 34.50,
  imageUrl: 'assets/images/pro-vac.png',
  isFav: false,
) ;

final _diseaseVaccine = Product(
  name: 'Disease Vaccine',
  manufacture: 'B1 Strain',
  description:
  'A COVID-19 vaccine manufacturing plant of the institute in Kunming, capital city of Yunnan Province, will be put into use in the second half of 2020.',
  price: 21.44,
  imageUrl: 'assets/images/diseaseVac.png',
  isFav: false,
) ;

final List<Product> products = [
  _proVacVenco,
  _diseaseVaccine,
];

final _mask = Sanitization(
  name: 'Mask',
  imageUrl: 'assets/images/mask.png',
) ;

final _gloves = Sanitization(
  name: 'Gloves',
  imageUrl: 'assets/images/gloves.png',
) ;
final _sanitizer = Sanitization(
  name: 'Sanitizer',
  imageUrl: 'assets/images/sanitizer.png',
) ;

final List<Sanitization> sanitizationProducts = [
  _mask,
  _gloves,
  _sanitizer,
];

final List<String> categoryList = [
  'Vaccines',
  'Sanitizer',
  'Mask',
  'Gloves',
  'Others',
];

final List<String> sizeOfVacc = [
  '50 ml',
  '100 ml',
  '150 ml',
];