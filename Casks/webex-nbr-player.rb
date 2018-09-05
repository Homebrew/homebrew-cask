cask 'webex-nbr-player' do
  version 'T33L'
  sha256 '797604383a3b9b755d6a91933ec9472ec0ee426fa323176b3093e6ad58a7e228'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexnbrplayer_intel.dmg"
  name 'Webex Network Recording player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'Network Recording Player.pkg'

  uninstall pkgutil: 'nbr.mac.webex.com'
end
