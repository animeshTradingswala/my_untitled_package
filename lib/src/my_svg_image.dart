import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySvgAssetImage extends StatelessWidget {
  final String assetImage;

  const MySvgAssetImage({required this.assetImage});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetImage);
  }
}

class MySvgNetworkImage extends StatelessWidget {
  final String networkImage;

  const MySvgNetworkImage({required this.networkImage});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(networkImage);
  }
}
