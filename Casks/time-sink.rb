cask 'time-sink' do
  version '2.0.0'
  sha256 '7ba8ad0833dfe5e1b24be7f0b2afb2a443b2d3f25ad285c6a017218575cba103'

  url "https://manytricks.com/download/_do_not_hotlink_/timesink#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/timesink/appcast'
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'

  auto_updates true

  app 'Time Sink.app'
end
