cask 'webex-nbr-player' do
  version 'T31L'
  sha256 '5d926ef819a91b3f00c53d2999974fc6d14f6d3b9ea9f779079cb480c5ae85d0'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexnbrplayer_intel.dmg"
  name 'Webex Network Recording player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'Network Recording Player.pkg'

  uninstall pkgutil: 'nbr.mac.webex.com'
end
