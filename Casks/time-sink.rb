cask 'time-sink' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/timesink'
  appcast 'https://manytricks.com/timesink/appcast.xml',
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'
  license :commercial

  app 'Time Sink.app'
end
