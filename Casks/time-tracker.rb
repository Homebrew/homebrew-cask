cask 'time-tracker' do
  version '1.3.13'
  sha256 'a6c982ee82f8babcf0f42d49950e5b3a1d613946736a7ee4a272b05916271aeb'

  url "https://github.com/rburgst/time-tracker-mac/releases/download/v#{version}-binary/Time.Tracker-#{version}-bin.zip"
  appcast 'https://github.com/rburgst/time-tracker-mac/releases.atom',
          checkpoint: 'e22133328e9f14dc4620bf8826f4fe4ecd4e787893b58fba64f78b1d2097a92d'
  name 'TimeTracker'
  homepage 'https://github.com/rburgst/time-tracker-mac'

  app 'Time Tracker.app'
end
