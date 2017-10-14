cask 'webex-nbr-player' do
  version 'T31L'
  sha256 '76be3ec4e8d8c7d7efab8b6900e8d3d1e933faa9e9587293547d612c5b34b311'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexnbrplayer_intel.dmg"
  name 'Webex Network Recording player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'Network Recording Player.pkg'

  uninstall pkgutil: 'nbr.mac.webex.com'
end
