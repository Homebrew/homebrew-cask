cask :v1 => 'webstorm' do
  version '10.0.4'
  sha256 '0e444910001fc74b401c3b12738abedb823cc8064af53a304ce8e8c4d9d0ca6a'

  url "http://download-cf.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  name 'WebStorm'
  homepage 'http://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'
end
