cask :v1 => 'time-sink' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/timesink'
  name 'Time Sink'
  appcast 'http://manytricks.com/timesink/appcast.xml',
          :sha256 => 'fc16219209d508e12e6b63a9833a55510aa644a4de0a32dff31f98c3f934773e'
  homepage 'http://manytricks.com/timesink/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Time Sink.app'
end
