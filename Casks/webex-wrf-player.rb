cask 'webex-wrf-player' do
  version 'T31L'
  sha256 'c41c01efa99afef50592acf42f91a34fe5cb18f42563bb0ec3802c2229128592'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexplayer_intel.dmg"
  name 'WebEx Player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'WebEx Player.pkg'

  uninstall pkgutil: 'playback.mac.webex.com'
end
