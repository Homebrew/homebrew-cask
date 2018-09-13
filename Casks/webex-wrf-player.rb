cask 'webex-wrf-player' do
  version 'T31L'
  sha256 'b8afb1c3a9ab4a25187bca153efb4400129c2126792763ad1068d60caa1fc451'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexplayer_intel.dmg"
  name 'WebEx Player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'WebEx Player.pkg'

  uninstall pkgutil: 'playback.mac.webex.com'
end
