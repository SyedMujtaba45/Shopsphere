import 'package:get/get.dart';
import 'package:my_app/controller/profile_controller.dart';
import 'package:my_app/widgets_common/custom_textfield.dart';
import '../../consts/consts.dart';
import '../../widgets_common/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets_common/our_button.dart';
import 'dart:io';

class EditProfileScreen extends StatelessWidget {

  final dynamic data;

  const EditProfileScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    // Register the ProfileController
    var controller = Get.find<ProfileController>();


    return bgWidget(
      child: Scaffold(
        appBar: AppBar(),
        body: Obx(
              () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              data['imageUrl'] == '' && controller.profileImgPath.isEmpty ? Image.asset(imgProfile2, width: 100,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make()
                  :
                  data['imageUrl'] != '' && controller.profileImgPath.isEmpty?
                      Image.network(data['imageUrl'], width: 100,
                        fit: BoxFit.cover,
                      ).box.roundedFull.clip(Clip.antiAlias).make()
                      : Image.file(File(controller.profileImgPath.value),
                width: 100,
                fit: BoxFit.cover,
              ).box.roundedFull.clip(Clip.antiAlias).make(),

              10.heightBox,
              ourButton(color: redColor, onPress: (){
                controller.changeImage(context);
              }, textColor: whiteColor, title: "Change"),
              Divider(),
              20.heightBox,
              customTextField(controller: controller.nameController, hint: nameHint, title: name, isPass: false),
              10.heightBox,
              customTextField(controller: controller.oldpassController, hint: passwordHint, title: oldpass, isPass: true),
              10.heightBox,
              customTextField(controller: controller.newpassController, hint: passwordHint, title: newpass, isPass: true),
              20.heightBox,
              controller.isloading.value ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(redColor),
              ): SizedBox(width: context.screenWidth - 60,
                child: ourButton(color: redColor, onPress: () async {
                  controller.isloading(true);
                  if(controller.profileImgPath.value.isEmpty){
                    await controller.uploadProfileImage();
                  }else{
                    controller.profileImageLink = data['imageUrl'];
                  }

                  if(data['password'] == controller.oldpassController.text){
                    await controller.changeAuthPassword(
                      email: data['email'],
                      password: controller.oldpassController.text,
                      newpassword: controller.newpassController.text
                    );
                    await controller.updateProfile(
                        imgUrl: controller.profileImageLink,
                        name: controller.nameController.text,
                        password: controller.newpassController.text
                    );
                    VxToast.show(context, msg: "updated");
                  }else{
                    VxToast.show(context, msg: "Wrong Old Password");
                    controller.isloading(false);
                  }


                }, textColor: whiteColor, title: "Save"),
              ),
            ],
          ).box.white.shadowSm.padding(const EdgeInsets.all(16)).margin(const EdgeInsets.only(top: 50, left: 12, right: 12)).rounded.make(),
        ),
      ),
    );
  }
}
