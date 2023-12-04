import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories{
  String? nama;
  Icon? icon;
  
  Categories({
    this.nama,
    this.icon
  });
}

List<Categories> categories = [
  Categories(
    nama: 'All',
    icon: const Icon(Icons.abc)
  ),
  Categories(
    nama: 'Sneakers',
    icon: const Icon(FontAwesomeIcons.shoePrints)
  ),
  Categories(
    nama: 'Clothing',
    icon: const Icon(FontAwesomeIcons.shirt)
  ),
  Categories(
    nama: 'Accessories',
    icon: const Icon(FontAwesomeIcons.ring)
  ),
  Categories(
    nama: 'Electronics',
    icon: const Icon(Icons.computer)
  ),
];


