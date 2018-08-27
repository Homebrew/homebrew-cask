cask 'webex-wrf-player' do
  version 'T31L'
  sha256 'bc4a62cca340e13933be580599611688c5bde5ab88576449be7d5f4f0317eb90'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexplayer_intel.dmg"
  name 'WebEx Player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'WebEx Player.pkg'

  uninstall pkgutil: 'playback.mac.webex.com'
end
