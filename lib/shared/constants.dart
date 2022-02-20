import 'package:bolt_food/shared/exports.dart';
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
  static const String angleUpDown = imagePath + 'angle-up-down.svg';

  // jpegs
  static const String heroImage = imagePath + 'hero-image.jpeg';
  static const String heroImageMobile = imagePath + 'hero-image-mobile.jpeg';
  static const String phones = imagePath + 'phones-with-bolt-food.jpeg';
  static const String signUpCareers = imagePath + 'sign-up-careers.jpeg';
  static const String signUpCourier = imagePath + 'sign-up-courier.jpeg';
  static const String signUpRestaurant = imagePath + 'sign-up-restaurant.jpeg';
}

class Links {
  static const String playStore =
      'https://play.google.com/store/apps/details?id=com.bolt.deliveryclient&shortlink=googleplayweb001&pid=Website&c=Google%20Play';
  static const String appStore =
      'https://apps.apple.com/app/bolt-food/id1451492388?shortlink=appstoreweb001&pid=Website&c=App%20store';
  static const String huaweiStore =
      'https://appgallery.huawei.com/#/app/C103397051?utm_source=huawei_badge&utm_medium=homepage';
  static const String couriers = 'https://couriers.bolt.eu/';
  static const String partners =
      'https://partners.food.bolt.eu/?utm_source=web&utm_medium=eater-landing-page&utm_campaign=boltfood-web';
  static const String careers =
      'https://careers.bolt.eu/positions?team=bolt-food';
  static const String support =
      'https://support.taxify.eu/hc/en-us/categories/360001224900';
  static const String press = 'https://bolt.eu/en/press/';
  static const String blog = 'https://blog.bolt.eu/fr/';
  static const String contacts = 'https://bolt.eu/en/cities/';
  static const String legal = 'https://food.bolt.eu/legal';
  static const String facebook =
      'https://web.facebook.com/BoltFoodEstonia/?_rdc=1&_rdr';
  static const String instagram = 'https://www.instagram.com/boltfood_ee/';
  static const String twitter = 'https://twitter.com/Boltapp';
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
