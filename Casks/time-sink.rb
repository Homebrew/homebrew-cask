cask 'time-sink' do
  version '2.0.1'
  sha256 'd4453a1cd9c2219368b82e86dfa89bcca5a74b28a70ff1e31284c35bfb4b3b31'

  url "https://manytricks.com/download/_do_not_hotlink_/timesink#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/timesink/appcast'
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'

  auto_updates true

  app 'Time Sink.app'
end
