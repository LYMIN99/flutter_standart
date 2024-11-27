
import 'package:flutter/material.dart';

class ImageUtils {
  // Load an image from assets
  static Widget loadAssetImage(String assetName, {double? width, double? height}) {
    return Image.asset(
      assetName,
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }

  // Load an image from network with a placeholder
  static Widget loadNetworkImage(String url, {double? width, double? height}) {
    return Image.network(
      url,
      width: width,
      height: height,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      (loadingProgress.expectedTotalBytes ?? 1)
                  : null,
            ),
          );
        }
      },
    );
  }

  // Resize image to specific dimensions (requires external package like 'image' or 'flutter_image_compress')
  // static Future<Image> resizeImage(Uint8List bytes, {int width = 200, int height = 200}) async {
  //   // Use an external package to resize the image
  //   // Example: image lib can be used here.
  // }
}
