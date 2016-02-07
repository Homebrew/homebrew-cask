cask 'xscope' do
  version '4.1.4'
  sha256 'd9f1eab342b885277344829eb7b10fa636b76991a9367fb2319f32a48a386ea2'

  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/xScope/appcast.xml',
          checkpoint: '8ca24804a212a277f857ed92478701e5433753f7c7e41299b7d6dc56e6dbdd38'
  name 'xScope'
  homepage 'http://iconfactory.com/software/xscope'
  license :commercial

  app 'xScope.app'
end
