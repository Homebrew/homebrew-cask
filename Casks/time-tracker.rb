class TimeTracker < Cask
  version '1.3.13'
  sha256 'a6c982ee82f8babcf0f42d49950e5b3a1d613946736a7ee4a272b05916271aeb'
  
  url 'https://time-tracker-mac.googlecode.com/files/Time%20Tracker-1.3.13.zip'
  appcast 'http://time-tracker-mac.googlecode.com/svn/appcast/timetracker-test.xml'
  homepage 'https://code.google.com/p/time-tracker-mac'

  link 'Time Tracker.app'
end
