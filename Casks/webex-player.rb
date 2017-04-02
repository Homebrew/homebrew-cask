cask 'webex-player' do
  version :latest
  sha256 :no_check

  url 'https://welcome.webex.com/client/T31L/mac/intel/webexplayer_intel.dmg'
  name 'WebEx Player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'WebEx Player.pkg'

  uninstall pkgutil: 'playback.mac.webex.com'
end
