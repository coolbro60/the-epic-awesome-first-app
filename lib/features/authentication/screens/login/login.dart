import 'package:MediCheck/common/styles/spacing_styles.dart';
import 'package:MediCheck/util/constants/colors.dart';
import 'package:MediCheck/util/constants/image_strings.dart';
import 'package:MediCheck/util/constants/sizes.dart';
import 'package:MediCheck/util/constants/text_strings.dart';
import 'package:MediCheck/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? TImages.lightAppLogo : TImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              // Input form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      //Email
                      TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields), 
                      
                      //Password
                      TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.password, suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                  
                      //Remember Me & Forget Password
                      Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Rembmer Me
                          Row (
                            children: [
                              Checkbox(value: true, onChanged: (value){}),
                              const Text(TTexts.rememberMe),
                            ],
                          ),
                  
                          //Forget Password
                          TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword)),
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections), 
                  
                      //Sign in button
                      SizedBox (width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text(TTexts.signIn)) ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      
                      //Create account button
                      SizedBox (width: double.infinity, child: OutlinedButton(onPressed: (){}, child: Text(TTexts.createAccount)) ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),
                    ],
                  ),
                ),
              ),

              //Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, indent: 60, endIndent: 5),
                ],
              )

              //Footer
            ],

          ),
        ),

      ),

    );

  }
}
