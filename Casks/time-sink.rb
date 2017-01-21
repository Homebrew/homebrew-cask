cask 'time-sink' do
  version '2.0'
  sha256 '7ba8ad0833dfe5e1b24be7f0b2afb2a443b2d3f25ad285c6a017218575cba103'

  url 'https://manytricks.com/download/timesink'
  appcast 'https://manytricks.com/timesink/appcast.xml',
          checkpoint: 'fefcfc1a14b135edc8a299bd7e441f33a35f894ce7f87a396c173654c65e9b0e'
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'

  auto_updates true

  app 'Time Sink.app'
end
