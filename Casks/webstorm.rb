cask :v1 => 'webstorm' do
  version '9.0'
  sha256 '278b1692c9aa17b44d15a801a50714624ab7dea9aedda364f08fa45b7ff66766'

  url "http://download-cf.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  homepage 'http://www.jetbrains.com/webstorm/'
  license :unknown

  app 'WebStorm.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{staged_path}/WebStorm.app/Contents/Info.plist"
  end
end
