import 'package:bolt_food/exports.dart';
import 'package:flutter/material.dart';

class Fonts {
  static String euclidCircularB = 'Euclid Circular B Regular';
}

class Palette {
  static const Color primary = Color(0xFF34D186);
  static const Color black = Color(0xFF2F313F);
  static const Color grey = Color(0xFF818391);
  static const Color footerBackground = Color(0xFFF4F4F6);
}

class Images {
  static const String imagePath = 'assets/images/';
  // svgs
  static const String appStore = imagePath + 'app-store.svg';
  static const String boltFoodLogo = imagePath + 'bolt-food-logo.svg';
  static const String facebookLogo = imagePath + 'facebook-logo.svg';
  static const String huaweiStore = imagePath + 'huawei-store.svg';
  static const String instagramLogo = imagePath + 'instagram-logo.svg';
  static const String playStore = imagePath + 'play-store.svg';
  static const String twitterLogo = imagePath + 'twitter-logo.svg';

  // jpegs
  static const String heroImage = imagePath + 'hero-image.jpeg';
  static const String heroImageMobile = imagePath + 'hero-image-mobile.jpeg';
  static const String phones = imagePath + 'phones-with-bolt-food.jpeg';
  static const String signUpCareers = imagePath + 'sign-up-careers.jpeg';
  static const String signUpCourier = imagePath + 'sign-up-courier.jpeg';
  static const String signUpRestaurant = imagePath + 'sign-up-restaurant.jpeg';
}


final List<SignUpModel> items = [
  SignUpModel(
      imagePath: Images.signUpCourier, label: 'Earn extra money as a courier'),
  SignUpModel(
      imagePath: Images.signUpRestaurant,
      label: 'Sign up as a restaurant partner'),
  SignUpModel(
      imagePath: Images.signUpCareers,
      label: 'Join the team building Bolt Food'),
];
