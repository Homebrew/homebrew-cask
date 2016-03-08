cask 'webex-nbr-player' do
  version :latest
  sha256 :no_check

  url 'https://welcome.webex.com/client/WBXclient-T29L10NSP12-10075/mac/intel/webexnbrplayer_intel.dmg'
  name 'Webex Network Recording player'
  homepage 'https://www.webex.com/play-webex-recording.html'
  license :gratis

  pkg 'Network Recording Player.pkg'

  uninstall pkgutil: 'nbr.mac.webex.com'
end
