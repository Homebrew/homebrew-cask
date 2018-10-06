cask 'webex-nbr-player' do
  version 'T33L'
  sha256 '504c49010eddd039fa20a69f04468d6a9061bd92b044c29a8fa7603ac6b1ee17'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexnbrplayer_intel.dmg"
  name 'Webex Network Recording player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'Network Recording Player.pkg'

  uninstall pkgutil: 'nbr.mac.webex.com'
end
