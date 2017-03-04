cask 'wiretap-studio' do
  version '1.2.2'
  sha256 'cfb0eb8b10828153f900d93a920b650cbba8a21d1f7e28bedc0414ccb2c3f8d8'

  url 'http://downloads3.ambrosiasw.com/wiretapstudio/essentials/WireTapStudio.dmg'
  appcast 'https://www.ambrosiasw.com/updates/profile.php/wiretap_studio/release',
          checkpoint: '88e49bedea4c9426997c344bda3f61959f3b7f0b05f432de0d9c26cf40a44fa4'
  name 'WireTap Studio'
  homepage 'https://www.ambrosiasw.com/utilities/wiretap/'

  app 'WireTap Studio.app'
end
