cask 'things' do
  version '1.4.8a'
  sha256 'a489f0071b011e6459672df84a54d39f4169e414b581cfd286dd602c14c96034'

  url "http://culturedcode.cachefly.net/things/Things_#{version}.zip"
  appcast 'https://downloads.culturedcode.com/things/download/Things_Updates.php',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Things'
  homepage 'https://culturedcode.com/things/'
  license :commercial

  app 'Things.app'
end
