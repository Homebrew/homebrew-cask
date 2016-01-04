cask 'time-sink' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/timesink'
  appcast 'https://manytricks.com/timesink/appcast.xml',
          :sha256 => '9d3f4080a3b044f321311ca0649f5d8a3f409d7232a52d9a85638103808ee67e'
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'
  license :commercial

  app 'Time Sink.app'
end
