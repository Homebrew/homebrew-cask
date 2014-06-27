class Timemachinescheduler < Cask
  version '3.1.4'
  sha256 '22b0976139c42d163aa7d905d845594af41d4f3d4254a21b334f0232b3815f0a'

  url 'http://www.klieme.com/Downloads/TimeMachineScheduler/TimeMachineScheduler_3.1.4.zip'
  homepage 'http://www.klieme.com/TimeMachineScheduler.html'

  nested_container 'TimeMachineScheduler3_Installer.dmg'
  prefpane 'TimeMachineScheduler3_Installer.app/Contents/Resources/TimeMachineScheduler.prefPane'
end
