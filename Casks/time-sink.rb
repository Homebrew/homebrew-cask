cask 'time-sink' do
  version '2.1.0'
  sha256 '6a2cec3828d7d3bf244825419dc82e3d5e0a6b640736c401c3b56305ddfef0ba'

  url "https://manytricks.com/download/_do_not_hotlink_/timesink#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/timesink/appcast',
          configuration: version.chomp('.0')
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'

  auto_updates true

  app 'Time Sink.app'
end
