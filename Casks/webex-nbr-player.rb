cask 'webex-nbr-player' do
  version 'T33L'
  sha256 '33e8141a8b88f1d52744ace9152dbccd4ec888fc97050a50266a2a6c5ca09eca'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexnbrplayer_intel.dmg"
  name 'Webex Network Recording player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'Network Recording Player.pkg'

  uninstall pkgutil: 'nbr.mac.webex.com'
end
