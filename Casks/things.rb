cask 'things' do
  version '1.4.8a'
  sha256 'a489f0071b011e6459672df84a54d39f4169e414b581cfd286dd602c14c96034'

  url "http://culturedcode.cachefly.net/things/Things_#{version}.zip"
  appcast 'https://downloads.culturedcode.com/things/download/Things_Updates.php',
          checkpoint: 'cd06fe3a9cbcc04efdaa8d0fb4184a50ceb7e42e5b647e66b13ac9f9eca922f9'
  name 'Things'
  homepage 'https://culturedcode.com/things/'
  license :commercial

  app 'Things.app'
end
