cask :v1 => 'xscope' do
  version '4.1.2'
  sha256 '75d6dce70dcaeb3561f9d4b99f3fef75e2886433d1c459b9efcc56280e45c4dc'

  url "http://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'http://iconfactory.com/appcasts/xScope/appcast.xml',
          :sha256 => '419794f0698b7ddb0a433e712d68064ce5907253ff849f22de95354d3e7eaa2a'
  name 'xScope'
  homepage 'http://iconfactory.com/software/xscope'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'xScope.app'
end
