cask :v1 => 'webex-nbr-player' do
  version :latest
  sha256 :no_check

  url 'https://welcome.webex.com/client/T27LD/mac/intel/webexnbrplayer_intel.dmg'
  name 'Webex Network Recording player'
  homepage 'http://www.webex.com/play-webex-recording.html'
  license :gratis

  pkg 'Network Recording Player.pkg'

  uninstall :pkgutil => 'nbr.mac.webex.com'
end
