cask 'videostream' do
  version '0.3.6'
  sha256 'd1f65c33c075709c1890aca871602baffdef22ae810a07c5a4f59d88a0383071'

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
