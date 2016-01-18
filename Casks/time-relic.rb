cask 'time-relic' do
  version '2.1.0'
  sha256 '95d881617a83e3e9787c06608fa56191151522f4f0224f09ce8300db32f73c48'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://timerelic-download.s3.amazonaws.com/Time%20Relic.app.zip'
  appcast 'https://timerelic-download.s3.amazonaws.com/appcast.xml',
          checkpoint: '21916a631a669e1c56ac746c79f24bf4ec084fd12d2d4f8bdd490b897841c40e'
  name 'Time Relic'
  homepage 'http://timerelic.com/'
  license :gratis

  app 'Time Relic.app'
end
