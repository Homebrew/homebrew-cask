cask 'webex-nbr-player' do
  version 'T31L'
  sha256 '83bf06780d8fbea07ac7e7f590e7b7d9030db62524725a3a24416c0c44fbc0ea'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexnbrplayer_intel.dmg"
  name 'Webex Network Recording player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'Network Recording Player.pkg'

  uninstall pkgutil: 'nbr.mac.webex.com'
end
