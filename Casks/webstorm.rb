cask :v1 => 'webstorm' do
  version '11.0.0'
  sha256 '1a60604e7e5b131f41fd7536db0594245697134896ee4054652f0dee09a85ba9'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}-custom-jdk-bundled.dmg"
  name 'WebStorm'
  homepage 'http://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'
end
