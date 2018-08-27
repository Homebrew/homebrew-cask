cask 'timemachinescheduler' do
  version '4.0b8Full'
  sha256 '8f05280e3375c6d7d7a7767ed3ae4be2c69b6c7826153b8ec28f566b51404d59'

  url "http://www.klieme.com/Downloads/TimeMachineScheduler/TimeMachineScheduler_#{version}.zip"
  appcast 'http://www.klieme.com/Downloads/TimeMachineScheduler/appcast.xml'
  name 'TimeMachineScheduler'
  homepage 'http://www.klieme.com/TimeMachineScheduler.html'

  app 'TimeMachineScheduler.app'

  zap trash: [
               '/Library/LaunchDaemons/com.klieme.TimeMachineScheduler.plist',
               '/Library/Preferences/com.klieme.TimeMachineScheduler.plist',
               '~/Library/Caches/com.klieme.TimeMachineScheduler',
               '~/Library/Preferences/com.klieme.TimeMachineScheduler.plist',
               '~/Library/Saved Application State/com.klieme.TimeMachineScheduler.savedState',
             ]
end
