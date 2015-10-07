cask :v1 => 'time-relic' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://timerelic-download.s3.amazonaws.com/Time%20Relic.zip'
  name 'Time Relic'
  appcast 'https://timerelic-download.s3.amazonaws.com/appcast.xml',
          :sha256 => 'f2f31bebc730e67f64b31bd00eac77d0e45cfe58d1b503185fa42f5ff8d1a443'
  homepage 'http://timerelic.com/'
  license :gratis

  app 'Time Relic.app'
end
