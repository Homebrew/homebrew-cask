cask 'time-sink' do
  version '1.2.6'
  sha256 '4bdd455090433316ec2006fa0a98988c7d445f8533415b2792525f2bca06aa86'

  url 'https://manytricks.com/download/timesink'
  appcast 'https://manytricks.com/timesink/appcast.xml',
          checkpoint: '31adc137baa25f72cb6609ac8048d2a502c56ab8a2dfcf1311cb41a872a99381'
  name 'Time Sink'
  homepage 'https://manytricks.com/timesink/'

  auto_updates true

  app 'Time Sink.app'
end
