cask 'webex-wrf-player' do
  version 'T33L'
  sha256 '073396a04cf1bbd1aa87f3be43abfc9278acf0425e49220f930b7515cd93962f'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexplayer_intel.dmg"
  name 'WebEx Player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'WebEx Player.pkg'

  uninstall pkgutil: 'playback.mac.webex.com'
end
