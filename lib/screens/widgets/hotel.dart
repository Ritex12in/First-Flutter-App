import 'package:first_flutter_app/base/res/media.dart';
import 'package:first_flutter_app/base/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.6,
      height: 350,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage(AppMedia.hotelRoom
                  )
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Open space",
              style: AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "London",
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$25/night",
              style: AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}
