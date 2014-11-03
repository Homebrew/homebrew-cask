class Xscope < Cask
  version '4.0.0'
  sha256 '0f84d50383c52ae010074067597c89a3f52b0993ac14170268982d9774780626'

  url "http://iconfactory.com/assets/software/xscope/xScope-#{version.sub(%r{^(\d+\.\d+).*},'\1')}.zip"
  appcast 'http://iconfactory.com/appcasts/xScope/appcast.xml',
          :sha256 => '419794f0698b7ddb0a433e712d68064ce5907253ff849f22de95354d3e7eaa2a'
  homepage 'http://iconfactory.com/software/xscope'
  license :unknown

  app 'xScope.app'
end
