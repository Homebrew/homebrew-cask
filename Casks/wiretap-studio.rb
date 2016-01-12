cask 'wiretap-studio' do
  version '1.2.2'
  sha256 'cfb0eb8b10828153f900d93a920b650cbba8a21d1f7e28bedc0414ccb2c3f8d8'

  url 'http://www.ambrosiasw.com/dl/wiretap'
  appcast 'https://www.ambrosiasw.com/updates/profile.php/wiretap_studio/release',
          :sha256 => 'fbcc1b8263b67f0a79c93df1d9ca1061c251e0ca5ce44ad67905c484bb04bab1'
  name 'WireTap Studio'
  homepage 'http://www.ambrosiasw.com/utilities/wiretap/'
  license :commercial

  app 'WireTap Studio.app'
end
