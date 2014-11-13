cask :v1 => 'time-tracker' do
  version '1.3.13'
  sha256 'a6c982ee82f8babcf0f42d49950e5b3a1d613946736a7ee4a272b05916271aeb'

  url "https://time-tracker-mac.googlecode.com/files/Time%20Tracker-#{version}.zip"
  appcast 'http://time-tracker-mac.googlecode.com/svn/appcast/timetracker-test.xml',
          :sha256 => '8737634f2e43e4eaf63d2ab603b47e46c13f3c322e2484b407f45776905777aa'
  homepage 'https://code.google.com/p/time-tracker-mac'
  license :oss

  app 'Time Tracker.app'
end
