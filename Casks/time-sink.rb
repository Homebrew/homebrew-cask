cask 'time-sink' do
  version '2.0.0'
  sha256 '7ba8ad0833dfe5e1b24be7f0b2afb2a443b2d3f25ad285c6a017218575cba103'

  url "https://manytricks.com/download/_do_not_hotlink_/timesink#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/timesink/appcast',
          checkpoint: '576a8b4e3947a126c0396a4155ccea19dedf84f7e3725968237529d989ed4910'
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'

  auto_updates true

  app 'Time Sink.app'
end
