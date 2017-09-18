cask 'webex-wrf-player' do
  version 'T31L'
  sha256 'ab7a11c78c9c0e97ea4c823efbdec97f151ff9af9d762cac9729d42fa1f821b9'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexplayer_intel.dmg"
  name 'WebEx Player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'WebEx Player.pkg'

  uninstall pkgutil: 'playback.mac.webex.com'
end
