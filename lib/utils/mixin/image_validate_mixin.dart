mixin ImageValidationMixin {
  bool isPhoto(String photo) {
    if (photo.isEmpty) {
      return false;
    }
    final validExtensions = [
      '.png',
      '.jpg',
      '.jpeg',
      '.bmp',
      '.gif',
      '.svg',
      '.webp'
    ];

    return validExtensions
        .any((extensionImage) => photo.toLowerCase().contains(extensionImage));
  }

  bool isPhotoValidUri(String? photo) {
    if (photo == null) {
      return false;
    }

    return isPhoto(photo) && (Uri.tryParse(photo)?.isAbsolute ?? false);
  }
}
