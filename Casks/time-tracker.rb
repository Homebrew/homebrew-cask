cask 'time-tracker' do
  version '1.3.13'
  sha256 'a6c982ee82f8babcf0f42d49950e5b3a1d613946736a7ee4a272b05916271aeb'

  url "https://time-tracker-mac.googlecode.com/files/Time%20Tracker-#{version}.zip"
  appcast 'https://time-tracker-mac.googlecode.com/svn/appcast/timetracker-test.xml',
          :checkpoint => '63e2e1c75f744d1d1a0b1cda1c1626d040c82a877217afe83987eaf363b1421a'
  name 'TimeTracker'
  homepage 'https://github.com/rburgst/time-tracker-mac'
  license :gpl

  app 'Time Tracker.app'
end
