import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_app/core/ui.dart';
import 'package:ecom_app/presentation/widgets/gap_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserFeedScreen extends StatefulWidget {
  const UserFeedScreen({super.key});

  @override
  State<UserFeedScreen> createState() => _UserFeedScreenState();
}

class _UserFeedScreenState extends State<UserFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Row(
          children: [
            CachedNetworkImage(
              width: MediaQuery.of(context).size.width / 3,
              imageUrl:
                  "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-card-40-iphone15prohero-202309_FMT_WHH?wid=508&hei=472&fmt=p-jpg&qlt=95&.v=1693086369818",
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Product title",
                    style:
                        TextStyles.body1.copyWith(fontWeight: FontWeight.bold)),
                Text("Description",
                    style:
                        TextStyles.body2.copyWith(color: AppColors.textLight)),
                const GapWidget(),
                Text("Nrs. 99999", style: TextStyles.heading3)
              ],
            )
          ],
        );
      },
    );
  }
}
