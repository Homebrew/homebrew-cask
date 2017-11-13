cask 'videostream' do
  version :latest
  sha256 :no_check

  url 'https://cdn.getvideostream.com/videostream-native-updates/macOS/Videostream.pkg'
  name 'Videostream'
  homepage 'https://getvideostream.com/'

  pkg 'Videostream.pkg'

  uninstall quit:      'com.videostream',
            launchctl: 'com.videostream.launcher',
            delete:    [
                         '/Library/LaunchAgents/com.videostream.launcher.plist',
                         '/Library/LaunchDaemons/com.videostream.updater.0.3.4.plist',
                       ],
            pkgutil:   'com.videostream'
end
