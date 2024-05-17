import 'package:flutter/material.dart';

class CategoryModel {
  final String categoryName;
  final String categoryPrice;
  final String categoryImage;
  final String categoryAdreess;

  CategoryModel({
    required this.categoryName,
    required this.categoryImage,
    required this.categoryPrice,
    required this.categoryAdreess,
  });
}

class CategoriesManager {
  List<CategoryModel> categories = [
    CategoryModel(
      categoryName:
          "Пульт дистанционного управления работает на разных частотах.",
      categoryPrice: "50 000 сум",
      categoryImage:
          "https://frankfurt.apollo.olxcdn.com/v1/files/gz6mkg9ulcae-UZ/image;s=1000x750",
      categoryAdreess: "Ташкент Учтепенский район Сегодня в  12:17",
    ),
    CategoryModel(
      categoryName: "ISUZU FVR33PL 2023",
      categoryPrice: "952 380 000 сум",
      categoryImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrSm1ZFRlJrVlAA1i6iQtGqzqn_2t0pEKfUw&usqp=CAU",
      categoryAdreess: "Ташкент Учтепенский район Сегодня в 13 май 2024г",
    ),
    CategoryModel(
      categoryName: "Chevrolet Cobalt 2023",
      categoryPrice: "165 079 200 сум",
      categoryImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAEt9Z7W_KJCnMqmsIwysQZI5a-APoyP3jAU8fQ4vCSVXxHtwIm2pcm-_fvTXtI2SM7ZU&usqp=CAUg",
      categoryAdreess: "Ташкент Учтепенский район Сегодня в 13 май 2024г",
    ),
    CategoryModel(
      categoryName: "Scuter",
      categoryPrice: "1653 200 сум",
      categoryImage: "https://www.moto.com.br/_next/image?url=https%3A%2F%2Fimages.usadosbr.com%2FmanipulatedImages%2Fmedia%2Fgallery%2F48%2F67%2Fed%2Fsuzuki-gsx-1300-ra-hayabusa-2024-amparo-sp-9dcf40d6-V8--0-image-760x570-crop.webp&w=828&q=75",
      categoryAdreess: "Ташкент Учтепенский район Сегодня в 13 май 2024г",
    ),
    CategoryModel(
      categoryName: "SUZUKI",
      categoryPrice: "165 9200 so'm",
      categoryImage: "https://www.suzuki-moto.com/sites/default/files/styles/200x160/public/public/troisquart/gsx-s1000_m2_ysf_diagonal_0.jpg?itok=iq6pggn7",
      categoryAdreess: "Ташкент Учтепенский район Сегодня в 13 май 2024г",
    ),
  ];
}
