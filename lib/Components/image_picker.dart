import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class ImagePic extends GetxService {
  Future<File?> getFromGallery() async {
    File? img;
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
    if (pickedFile != null) {
      img = File(pickedFile.path);
    }
    return img;
  }

  Future<File?> getFromCamera() async {
    File? img;
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );
    if (pickedFile != null) {
      img = File(pickedFile.path);
    }
    return img;
  }
}
