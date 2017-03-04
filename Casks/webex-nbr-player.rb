cask 'webex-nbr-player' do
  version 'T29L10NSP13EP71-10003'
  sha256 '242ad4c65afee9fc2d7f5608fe3f959e71eb20b22ac33af4ae125b9c670642f0'

  url "https://welcome.webex.com/client/WBXclient-#{version}/mac/intel/webexnbrplayer_intel.dmg"
  name 'Webex Network Recording player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'Network Recording Player.pkg'

  uninstall pkgutil: 'nbr.mac.webex.com'
end
