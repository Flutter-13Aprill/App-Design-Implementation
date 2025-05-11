//Class represent OnboardingContent
class OnboardingContent {
  String imageUrl;
  String title;
  String subTitle;

  // Constructor to initialize
  OnboardingContent({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });
}

// List onboardingContent
final List<OnboardingContent> onboardingContent = [
  OnboardingContent(
    imageUrl: 'assets/images/list.png',
    title: 'Welcome to ShopMate!',
    subTitle:
        'Simplify your grocery shopping with quick, organized lists made just for you.',
  ),
  OnboardingContent(
    imageUrl: 'assets/images/cart.png',
    title: 'Create Lists in Seconds',
    subTitle: 'Quickly add items and build your grocery list without hassle.',
  ),
  OnboardingContent(
    imageUrl: 'assets/images/phone.png',
    title: 'Share and Sync',
    subTitle:
        'Collaborate on your shopping lists with family and friends in real time.',
  ),
];
