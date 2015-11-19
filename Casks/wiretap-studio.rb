cask :v1 => 'wiretap-studio' do
  version '1.2.2'
  sha256 'cfb0eb8b10828153f900d93a920b650cbba8a21d1f7e28bedc0414ccb2c3f8d8'

  url 'http://www.ambrosiasw.com/dl/wiretap'
  name 'WireTap Studio'
  appcast 'https://www.AmbrosiaSW.com/updates/profile.php/wiretap_studio/release',
          :sha256 => 'b1903154579259dce440840029c34294417fe68a4ede2eddc6ee6ef27acca8c2'
  homepage 'http://www.ambrosiasw.com/utilities/wiretap/'
  license :commercial

  app 'WireTap Studio.app'
end
