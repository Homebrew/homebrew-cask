cask 'woodhouse' do
  version '0.5.0'
  sha256 '3ed1b6711eb9ec862e34addc141d681d9b0fed2950b9d9b7189734087eeb7541'

  url "https://github.com/downloads/phinze/woodhouse/Woodhouse-#{version}.dmg"
  appcast 'https://phinze.github.com/woodhouse/appcast.xml',
          checkpoint: '13325232ccfc9574fe890e370d05c4edf0255fb49a4785b242e94f97fb24fc14'
  name 'Woodhouse'
  homepage 'https://github.com/phinze/woodhouse/'

  app 'Woodhouse.app'
end
