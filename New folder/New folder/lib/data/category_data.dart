import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/category_model.dart';

List categoryData = [
  CategoryModel(
    title: 'Trending',
    icon: Icons.new_releases_outlined,
    active: true,
  ),
  CategoryModel(
    title: "Jewllery",
    icon: Icons.ac_unit_rounded,
    active: false,
  ),
  CategoryModel(
    title: "Fashion",
    icon: Icons.local_fire_department_outlined,
    active: false,
  ),
  CategoryModel(
    title: "Casual",
    icon: Icons.redeem,
    active: false,
  ),
];
