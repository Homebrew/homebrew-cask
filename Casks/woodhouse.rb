cask :v1 => 'woodhouse' do
  version '0.5.0'
  sha256 '3ed1b6711eb9ec862e34addc141d681d9b0fed2950b9d9b7189734087eeb7541'

  url "https://github.com/downloads/phinze/woodhouse/Woodhouse-#{version}.dmg"
  appcast 'http://phinze.github.com/woodhouse/appcast.xml',
          :sha256 => '60e19f2463f90a57417229593f456df23d1ba55781d305db7ac5d47d0ecbcf79'
  homepage 'https://github.com/phinze/woodhouse/'
  license :oss

  app 'Woodhouse.app'
end
