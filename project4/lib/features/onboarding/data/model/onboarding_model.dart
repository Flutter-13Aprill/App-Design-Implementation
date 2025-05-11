import 'package:project4/core/text/app_text.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({required this.image, required this.title, required this.description});
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image: "asset/image/onboarding1.png",
    title: AppText.onboardingTitle1,
    description: AppText.onboardingSubTitle1,
  ),
  OnboardingModel(
    image: "asset/image/onboarding2.png",
    title: AppText.onboardingTitle2,
    description: AppText.onboardingSubTitle2,
  ),
  OnboardingModel(
    image: "asset/image/onboarding3.png",
    title: AppText.onboardingTitle3,
    description: AppText.onboardingSubTitle3,
  ),
];
