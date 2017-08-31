cask 'webex-nbr-player' do
  version 'T31L'
  sha256 '59fa6ad215d451ded9c5cb269aed237d02eacd639fc1e30a464725194d68af5f'

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexnbrplayer_intel.dmg"
  name 'Webex Network Recording player'
  homepage 'https://www.webex.com/play-webex-recording.html'

  pkg 'Network Recording Player.pkg'

  uninstall pkgutil: 'nbr.mac.webex.com'
end
