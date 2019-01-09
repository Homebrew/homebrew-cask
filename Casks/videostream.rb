cask 'videostream' do
  version '0.3.5'
  sha256 '7391c05f0214bf248f0a296aa84f94b943a45ad7dc685a214ea4129ebe5026b0'

  url 'https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg'
  appcast 'https://s3.amazonaws.com/videostream-cdn/videostream-native-updates/macOS/manifest.json'
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
