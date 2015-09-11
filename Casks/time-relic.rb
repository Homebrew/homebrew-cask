cask :v1 => 'time-relic' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://timerelic-download.s3.amazonaws.com/Time%20Relic.zip'
  name 'Time Relic'
  appcast 'https://timerelic-download.s3.amazonaws.com/appcast.xml',
          :sha256 => '671ff3726eab6e24fdafb47d2b0db7fc70dc09525bc3d5b15be7c12f1f5df196'
  homepage 'http://timerelic.com/'
  license :gratis

  app 'Time Relic.app'
end
