import 'package:doc_app/core/helper/extentions.dart';
import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
      context.pushNamed(Routes.loginscreen);
      },
      style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(
            const Size(
              double.infinity,
              52,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          )),
      child: Text(
        "Get Started",
        style: TextStyles.font16WhitesemiBold,
      ),
    );
  }
}
