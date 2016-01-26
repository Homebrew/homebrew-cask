cask 'woodhouse' do
  version '0.5.0'
  sha256 '3ed1b6711eb9ec862e34addc141d681d9b0fed2950b9d9b7189734087eeb7541'

  url "https://github.com/downloads/phinze/woodhouse/Woodhouse-#{version}.dmg"
  appcast 'https://phinze.github.com/woodhouse/appcast.xml',
          checkpoint: 'bd9df047d51943acc4bc6cf55d88edb5b6785a53337ee2a0f74dd521aedde87d'
  name 'Woodhouse'
  homepage 'https://github.com/phinze/woodhouse/'
  license :mit

  app 'Woodhouse.app'
end
