cask 'tapaal' do
  version '3.4.1'
  sha256 'e2678ca750376fb0f52adcea6caae10fd3e5df3e7c7e2d2ac5908ddfca6dd222'

  url "http://www.tapaal.net/fileadmin/download/tapaal-#{version.major_minor}/tapaal-#{version}-mac64.dmg"
  appcast 'http://www.tapaal.net/',
          checkpoint: '4aad60322ed336d37e70755dec2cfb9811f3a0e7d16bb68c658da625c99fe2a2'
  name 'TAPAAL'
  homepage 'http://www.tapaal.net/'

  app 'Tapaal.app'
end
