cask 'wiretap-studio' do
  version '1.2.2'
  sha256 'cfb0eb8b10828153f900d93a920b650cbba8a21d1f7e28bedc0414ccb2c3f8d8'

  url 'http://downloads3.ambrosiasw.com/wiretapstudio/essentials/WireTapStudio.dmg'
  appcast 'https://www.ambrosiasw.com/updates/profile.php/wiretap_studio/release'
  name 'WireTap Studio'
  homepage 'https://www.ambrosiasw.com/utilities/wiretap/'

  app 'WireTap Studio.app'
end
