import 'package:get/get.dart';
import 'package:my_app/consts/lists.dart';
import 'package:my_app/controller/auth_controller.dart';
import 'package:my_app/controller/profile_controller.dart';
import 'package:my_app/views/auth_screen/login_screen.dart';
import 'package:my_app/views/profile_screen/edit_profile_screen.dart';
import 'package:my_app/widgets_common/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/consts.dart';
import 'components/detail_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // EDIT PROFILE BUTTON
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.edit, color: whiteColor),
                ).onTap(() {
                  Get.to(() => EditProfileScreen());
                }),
              ),

              // User details section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                        .box
                        .roundedFull
                        .clip(Clip.antiAlias)
                        .make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "M.Sudais ".text.fontFamily(semibold).white.make(),
                          "sudaisurrehman122@gmail.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: whiteColor),
                      ),
                      onPressed: () async {
                        await Get.put(AuthController()).signoutMethod(context);
                        Get.offAll(() => const LoginScreen());
                      },
                      child: logout.text.fontFamily(semibold).white.make(),
                    )
                  ],
                ),
              ),

              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                    count: "0", // Placeholder value
                    title: "in your cart",
                    width: context.screenWidth / 3.4,
                  ),
                  detailsCard(
                    count: "0", // Placeholder value
                    title: "in your wishlist",
                    width: context.screenWidth / 3.4,
                  ),
                  detailsCard(
                    count: "0", // Placeholder value
                    title: "your orders",
                    width: context.screenWidth / 3.4,
                  ),
                ],
              ),

              // Buttons section
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(color: lightGrey);
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading:
                    Image.asset(profileButtonsIcon[index], width: 22),
                    title: profileButtonsList[index].text.make(),
                  );
                },
              )
                  .box
                  .white
                  .rounded
                  .margin(const EdgeInsets.all(12))
                  .padding(const EdgeInsets.symmetric(horizontal: 16))
                  .shadowSm
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
