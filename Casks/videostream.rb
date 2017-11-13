cask 'videostream' do
  version '0.3.4'
  sha256 'e67f26983fcddabec09b6bf922d396078af008966b7841f3619c9cb5a9b26b40'

  url 'https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg'
  appcast 'https://s3.amazonaws.com/videostream-cdn/videostream-native-updates/macOS/manifest.json',
          checkpoint: '61859793bbedafe0069f9e3c86444dea2357bf471c5de83accc65d4ccc39e758'
  name 'Videostream'
  homepage 'https://getvideostream.com/'

  pkg 'Videostream.pkg'

  uninstall launchctl: [
                         'com.videostream.launcher',
                         "com.videostream.updater.#{version}",
                       ],
            pkgutil:   'com.videostream',
            signal:    ['TERM', 'com.videostream']
end
