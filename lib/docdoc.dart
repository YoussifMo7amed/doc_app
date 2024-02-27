import 'package:doc_app/core/routing/app_router.dart';
import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class docapp extends StatelessWidget {
  const docapp({super.key, required this.appRouter});
final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      
        child:  MaterialApp(
          onGenerateRoute:appRouter.generateroutes ,
          initialRoute: Routes.onBoardingScreen,
          debugShowCheckedModeBanner: false,
          title: 'doc app',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
        
      ),); }
  }
