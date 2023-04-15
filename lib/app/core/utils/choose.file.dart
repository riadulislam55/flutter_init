import 'package:permission_handler/permission_handler.dart';

enum PickType { camera, gallery }

class ChooseFile {
  static Future<List<FileItem>> get(PickType type) async {
    var selectedFiles = <FileItem>[];

    // final ImagePicker picker = ImagePicker();
    // if (type == PickType.camera) {
    //   /// camera
    //   final XFile? photo = await picker.pickImage(
    //       source: ImageSource.camera, imageQuality: 50);
    //   if (photo != null) {
    //     selectedFiles.add(FileItem("image", photo.path));
    //   }
    // } else {
    //   /// gallery
    //   final List<XFile> images =
    //       await picker.pickMultiImage(imageQuality: 50);
    //   if (images.isNotEmpty) {
    //     for (XFile file in images) {
    //       selectedFiles.add(FileItem("image", file.path));
    //     }
    //   }
    // }
    return selectedFiles;
  }

  // static bool isImage(String path) {
  //   final mimeType = lookupMimeType(path);
  //   return mimeType?.startsWith('image/') ?? false;
  // }

  static Future<bool> isStoragePermissionGranted() async {
    final status = await Permission.storage.request();
    if (status.isGranted) {
      return true;
    }
    return false;
  }
}

class FileItem {
  String type;
  String path;

  FileItem(this.type, this.path);
}
