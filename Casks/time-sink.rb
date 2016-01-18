cask 'time-sink' do
  version '1.2.4'
  sha256 'ebca992aa70f12d85dfafcbf0d6753bbd6c36daa6bc280c8a2b3316ae51be225'

  url 'https://manytricks.com/download/timesink'
  appcast 'https://manytricks.com/timesink/appcast.xml',
          checkpoint: '9d3f4080a3b044f321311ca0649f5d8a3f409d7232a52d9a85638103808ee67e'
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'
  license :commercial

  app 'Time Sink.app'
end
