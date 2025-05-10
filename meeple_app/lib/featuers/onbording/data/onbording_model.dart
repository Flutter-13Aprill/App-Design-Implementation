import 'package:meeple_app/core/text/app_text.dart';

class OnbordingModel {
  final String image;
  final String title;
  final String? subTitle;

  OnbordingModel({required this.image, required this.title, this.subTitle});
}

List<OnbordingModel> onbordingData = [
  OnbordingModel(
    image: "assets/images/onbording1.png",
    title: AppText.title1,
    subTitle: AppText.subTitle1,
  ),
  OnbordingModel(
    image: "assets/images/onbording2.png",
    title: AppText.title2,
    subTitle: AppText.subTitle2,
  ),
  OnbordingModel(
    image: "assets/images/onbording3.png",
    title: AppText.title3,
    subTitle: AppText.subTitle3,
  ),
];
