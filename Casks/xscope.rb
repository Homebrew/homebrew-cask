cask :v1 => 'xscope' do
  version '4.1'
  sha256 '7323455710792157878a4c3eb5b1d2884061557fff6739c3a82a8dca122f5f83'

  url "http://iconfactory.com/assets/software/xscope/xScope-#{version.sub(%r{^(\d+\.\d+).*},'\1')}.zip"
  appcast 'http://iconfactory.com/appcasts/xScope/appcast.xml',
          :sha256 => '419794f0698b7ddb0a433e712d68064ce5907253ff849f22de95354d3e7eaa2a'
  homepage 'http://iconfactory.com/software/xscope'
  license :unknown

  app 'xScope.app'
end
