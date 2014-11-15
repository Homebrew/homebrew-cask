cask :v1 => 'time-sink' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/timesink'
  homepage 'http://manytricks.com/timesink/'
  license :unknown

  # todo: mistaken capital A in .app name?
  app 'Time Sink.App'
end
