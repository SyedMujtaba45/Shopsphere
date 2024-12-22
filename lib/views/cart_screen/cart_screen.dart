import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/consts/consts.dart';
import 'package:my_app/widgets_common/our_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../services/firestore_services.dart';
import '../../widgets_common/loading_indicator.dart';

class CartScreen extends StatelessWidget{
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: "Shopping cart".text.color(darkFontGrey).fontFamily(semibold).make(),
      ),


      body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column (
                  children: [
                    Expanded(child: Container(color: Colors.red,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Total price".text.fontFamily(semibold).color(darkFontGrey).make(),
                        "40".numCurrency.text.fontFamily(semibold).color(redColor).make(),
                      ],
                    ).box.padding(const EdgeInsets.all(12)).color(lightGolden).width(context.screenWidth - 60).roundedSM.make(),
                    10.heightBox,
                    SizedBox(
                      width: context.screenWidth - 60,
                      child: ourButton(
                        color: redColor,
                        onPress: () {},
                        textColor: whiteColor,
                        title: "Proceed to shipping",
                      ),
                    ),
                  ],
                ),




      ),
    );

  }
}