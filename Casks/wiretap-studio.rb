cask 'wiretap-studio' do
  version '1.2.2'
  sha256 'cfb0eb8b10828153f900d93a920b650cbba8a21d1f7e28bedc0414ccb2c3f8d8'

  url 'http://www.ambrosiasw.com/dl/wiretap'
  appcast 'https://www.ambrosiasw.com/updates/profile.php/wiretap_studio/release',
          checkpoint: '3b4d71ae82f36bdd70586740d540c6acf07bf038ab0d879f8d3fb8d0735dd4db'
  name 'WireTap Studio'
  homepage 'http://www.ambrosiasw.com/utilities/wiretap/'
  license :commercial

  app 'WireTap Studio.app'
end
