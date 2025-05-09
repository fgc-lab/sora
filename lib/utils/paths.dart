class Paths {
  static List<String> galleryDLWindowsConfigPaths = [
    r'%APPDATA%\gallery-dl\config.json',
    r'%USERPROFILE%\gallery-dl\config.json',
    r'%USERPROFILE%\gallery-dl.conf',
  ];

  static List<String> galleryDLOtherConfigPaths = [
    '/etc/gallery-dl.conf',
    r'${XDG_CONFIG_HOME}/gallery-dl/config.json',
    r'${HOME}/.config/gallery-dl/config.json',
    r'${HOME}/.gallery-dl.conf',
  ];
}
