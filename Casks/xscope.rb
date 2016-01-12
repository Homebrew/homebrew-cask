cask 'xscope' do
  version '4.1.4'
  sha256 'd9f1eab342b885277344829eb7b10fa636b76991a9367fb2319f32a48a386ea2'

  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/xScope/appcast.xml',
          :sha256 => '4dbe3c97a4d28ef2bd3ea0853a918de7565164fe4abf958cccd7c9f9a39b9c7e'
  name 'xScope'
  homepage 'http://iconfactory.com/software/xscope'
  license :commercial

  app 'xScope.app'
end
