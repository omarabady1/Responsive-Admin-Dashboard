import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/generated/assets.dart';
import 'package:responsive_admin_dashboard/models/card_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.card});
  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        margin: EdgeInsets.only(right: 4),
        decoration: ShapeDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.assetsIconsCardBackground),
          ),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 27, left: 31, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    card.holderName,
                    style: AppStyle.styleRegular16(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SvgPicture.asset(Assets.iconsGallery, height: 22),
                ],
              ),

              SizedBox(height: 20),

              Text(
                card.cardNumber,
                style: AppStyle.styleSemiBold24(context).copyWith(color: Colors.white),
              ),

              SizedBox(height: 8),

              Text(
                '${card.expiredDate} - ${card.cvv}',
                style: AppStyle.styleRegular16(context).copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
