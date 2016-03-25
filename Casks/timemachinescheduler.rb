cask 'timemachinescheduler' do
  version '3.1.4'
  sha256 '22b0976139c42d163aa7d905d845594af41d4f3d4254a21b334f0232b3815f0a'

  url "http://www.klieme.com/Downloads/TimeMachineScheduler/TimeMachineScheduler_#{version}.zip"
  appcast 'http://www.klieme.com/Downloads/TimeMachineScheduler/appcast.xml',
          checkpoint: '45fe02d1f8cda89dc2bb0e8370966aaf5a0030192273a3c0d3c4b150f5443369'
  name 'TimeMachineScheduler'
  homepage 'http://www.klieme.com/TimeMachineScheduler.html'
  license :gratis

  container nested: 'TimeMachineScheduler3_Installer.dmg'

  prefpane 'TimeMachineScheduler3_Installer.app/Contents/Resources/TimeMachineScheduler.prefPane'
end
