cask :v1 => 'xscope' do
  version '4.1.4'
  sha256 'd9f1eab342b885277344829eb7b10fa636b76991a9367fb2319f32a48a386ea2'

  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/xScope/appcast.xml',
          :sha256 => '29eaf2c30992f4c72e4a98d96ce912a1cfde16d751a6b68044ef3c116672d8eb'
  name 'xScope'
  homepage 'http://iconfactory.com/software/xscope'
  license :commercial

  app 'xScope.app'
end
