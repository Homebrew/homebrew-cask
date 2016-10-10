cask 'time-tracker' do
  version '1.3.13'
  sha256 'a6c982ee82f8babcf0f42d49950e5b3a1d613946736a7ee4a272b05916271aeb'

  url "https://github.com/rburgst/time-tracker-mac/releases/download/v#{version}-binary/Time.Tracker-#{version}-bin.zip"
  appcast 'https://github.com/rburgst/time-tracker-mac/releases.atom',
          checkpoint: 'f10b0a3f4b727f8dd307bc63b58b30b2d00c8921bcef532457dd60b0827217ec'
  name 'TimeTracker'
  homepage 'https://github.com/rburgst/time-tracker-mac'

  app 'Time Tracker.app'
end
