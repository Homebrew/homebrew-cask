cask 'time-relic' do
  version '2.1.0'
  sha256 '95d881617a83e3e9787c06608fa56191151522f4f0224f09ce8300db32f73c48'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://timerelic-download.s3.amazonaws.com/Time%20Relic.app.zip'
  appcast 'https://timerelic-download.s3.amazonaws.com/appcast.xml',
          :sha256 => 'f2f31bebc730e67f64b31bd00eac77d0e45cfe58d1b503185fa42f5ff8d1a443'
  name 'Time Relic'
  homepage 'http://timerelic.com/'
  license :gratis

  app 'Time Relic.app'
end
