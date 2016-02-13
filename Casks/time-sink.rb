cask 'time-sink' do
  version '1.2.5'
  sha256 'e8742770f9fe7944bbf60c9f692127c3b00dba96b0bcc2ed0b80563eb525a08c'

  url 'https://manytricks.com/download/timesink'
  appcast 'https://manytricks.com/timesink/appcast.xml',
          checkpoint: 'f6886239162de22ba1b755eb14603ef514d5d00ab59b75969b3761ac1beadbaa'
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'
  license :commercial

  auto_updates true

  app 'Time Sink.app'
end
