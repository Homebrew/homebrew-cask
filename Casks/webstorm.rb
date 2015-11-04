cask :v1 => 'webstorm' do
  version '11.0.0'
  sha256 'aecc26c2cb95d610bcb60d1224b4f8e80031cd8dd1430256173ecc35f7464f40'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}-custom-jdk-bundled.dmg"
  name 'WebStorm'
  homepage 'http://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'
end
