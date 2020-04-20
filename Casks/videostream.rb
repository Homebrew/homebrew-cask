cask 'videostream' do
  version '0.4.0'
  sha256 'ac74c9b20fa53ce49ba5b2e36f55456363107d02c58fcb4579d10f8441954771'

  url 'https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg'
  appcast 'https://videostream-cdn.s3.amazonaws.com/videostream-native-updates/macOS/manifest.json'
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
