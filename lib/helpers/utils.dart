import 'package:flutter/material.dart';
import 'package:foof_app/helpers/appColors.dart';
import 'package:foof_app/models/category.dart';
import 'package:foof_app/models/categoryPart.dart';
import 'package:foof_app/models/onBoardingContent.dart';
import 'package:foof_app/models/subCategory.dart';

class Utils {
  static List<OnBoardingContent> getOnboardingContent() {
    return ([
      OnBoardingContent(message: '', imgName: 'onboard1.png'),
      OnBoardingContent(message: '', imgName: 'onboard2.png'),
      OnBoardingContent(message: '', imgName: 'onboard3.png'),
    ]);
  }

  static List<Category> getCategoryList() {
    return [
      Category(
          name: "Cold Coffee",
          color: Colors.cyan,
          icon: Icons.food_bank,
          imgName: "espresso",
          subCategory: [
            SubCategory(
                name: 'Cappuccino on Ice',
                color: AppColors.MAIN_COLOR,
                icon: Icons.ac_unit,
                imgName: 'assets/images/capp.jpg',
                parts: [
                  CategoryPart(
                      name: "Iced cappuccino",
                      imageName: "icedcappuccinos.jpg",
                      isSelected: false),
                  CategoryPart(
                      name: "Dry cappuccinos",
                      imageName: "drycappuccinos.jpg",
                      isSelected: false),
                  CategoryPart(
                      name: "Flavored cappuccinos",
                      imageName: "flavoredcappuccinos.jpg",
                      isSelected: false),
                ]),
            SubCategory(
                name: 'Banana Milk Coffee',
                color: AppColors.MAIN_COLOR,
                icon: Icons.ac_unit,
                imgName: 'assets/images/bncoffee.jpg',
                parts: [
                  CategoryPart(name: "hel", imageName: "", isSelected: false)
                ]),
            SubCategory(
                name: 'Iced Caramel Macchiato',
                color: AppColors.MAIN_COLOR,
                icon: Icons.ac_unit,
                imgName: 'assets/images/icedcaramel.jpg',
                parts: [
                  CategoryPart(name: "dd", imageName: "", isSelected: false)
                ]),
            SubCategory(
                name: 'Chocolate Iced Mocha',
                color: AppColors.MAIN_COLOR,
                icon: Icons.ac_unit,
                imgName: 'assets/images/Mocha.jpg',
                parts: [
                  CategoryPart(name: "", imageName: "", isSelected: false)
                ]),
          ]),
      Category(
          name: "Latte",
          color: Colors.cyan,
          icon: Icons.fast_rewind_outlined,
          imgName: "Latte",
          subCategory: []),
      Category(
          name: "Cappuccino",
          color: Colors.cyan,
          icon: Icons.food_bank,
          imgName: "Cappuccino",
          subCategory: []),
      Category(
          name: "Black Coffee",
          color: Colors.cyan,
          icon: Icons.food_bank,
          imgName: "BlackCoffee",
          subCategory: []),
      Category(
          name: "Macchiato",
          color: Colors.cyan,
          icon: Icons.food_bank,
          imgName: "Macchiato",
          subCategory: []),
      Category(
          name: "Mocha Latte",
          color: Colors.cyan,
          icon: Icons.food_bank,
          imgName: "MochaLatte",
          subCategory: []),
    ];
  }

  static String deviceSuffix(BuildContext context) {
    String deviceSuffix = '';
    TargetPlatform platform = Theme.of(context).platform;
    switch (platform) {
      case TargetPlatform.android:
        deviceSuffix = '_android';
        break;
      case TargetPlatform.iOS:
        deviceSuffix = '_ios';
        break;
      default:
        deviceSuffix = '';
        break;
    }

    return deviceSuffix;
  }
}
