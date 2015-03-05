cask :v1 => 'time-relic' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://timerelic-download.s3.amazonaws.com/Time%20Relic.zip'
  name 'Time Relic'
  homepage 'http://timerelic.com/'
  license :gratis

  app 'Time Relic.app'
end
