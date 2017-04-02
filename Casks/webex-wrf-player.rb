cask 'webex-wrf-player' do
  version 'T31L'
  sha256 'fcaeaa30414b3ba1bec41ec75940321b13cd738c32ed2f350810265fa2c8cb2f'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexplayer_intel.dmg"
  name 'WebEx Player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'WebEx Player.pkg'

  uninstall pkgutil: 'playback.mac.webex.com'
end
