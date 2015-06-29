cask :v1 => 'xscope' do
  version '4.1.3'
  sha256 'e967c296b6fd84270d926007b056826b3bc8826744f83ea2bea139609d082ad5'

  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/xScope/appcast.xml',
          :sha256 => '419794f0698b7ddb0a433e712d68064ce5907253ff849f22de95354d3e7eaa2a'
  name 'xScope'
  homepage 'http://iconfactory.com/software/xscope'
  license :commercial

  app 'xScope.app'
end
