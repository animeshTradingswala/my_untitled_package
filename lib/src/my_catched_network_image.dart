import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'const/colors.dart';

class MyCatchedNetworkImage extends StatelessWidget {
  final bool? elevationNeeded;
  final String imgUrl;
  final double width;
  final double height;

  const MyCatchedNetworkImage({
    this.elevationNeeded,
    required this.imgUrl,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevationNeeded == true ? 8 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        placeholder: (context, url) =>
            const Center(child: CupertinoActivityIndicator()),
        errorWidget: (context, url, error) => const Icon(
          Icons.image_not_supported_outlined,
          color: red,
        ),
        width: width,
        height: height,
        fit: BoxFit.fill,
      ),
    );
  }
}
