cask 'webex-wrf-player' do
  version 'T33L'
  sha256 '51e93739854124f44ecae8dc45efcad5c39d64801d928262816f26b147640303'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexplayer_intel.dmg"
  name 'WebEx Player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'WebEx Player.pkg'

  uninstall pkgutil: 'playback.mac.webex.com'
end
