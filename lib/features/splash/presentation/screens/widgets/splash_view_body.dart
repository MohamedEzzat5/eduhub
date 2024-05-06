
import 'package:faculty_app/core/utils/assets_manger.dart';
import 'package:faculty_app/features/splash/presentation/screens/widgets/sliding_body.dart';
import 'package:flutter/cupertino.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    //navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo,),
        SlidingBody(slidingAnimation: slidingAnimation),
      ],
    );
  }

  // // function to navigate to home in init state
  // Future<void> navigateToHome() async {
  //   if (FirebaseAuth.instance.currentUser == null) {
  //     Future.delayed(const Duration(seconds: 3), () {
  //       GoRouter.of(context).push(AppRouter.kLoginView);
  //     });
  //   } else if( FirebaseAuth.instance.currentUser!.uid ==doctorId){
  //     Future.delayed(const Duration(seconds: 3), () {
  //       GoRouter.of(context).push(AppRouter.kDoctorView);
  //     });
  //   }else{
  //     Future.delayed(const Duration(seconds: 3), () {
  //       GoRouter.of(context).push(AppRouter.kHomeView);
  //     });
  //   }
  // }

// in init function => sliding animation.
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
