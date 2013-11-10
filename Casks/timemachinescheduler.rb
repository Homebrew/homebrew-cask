class Timemachinescheduler < Cask
  url 'http://www.klieme.com/Downloads/TimeMachineScheduler/TimeMachineScheduler_3.1.4.zip'
  homepage 'http://www.klieme.com/TimeMachineScheduler.html'
  version '3.1.4'
  sha1 '563c93b963da470e8fca65bf8b5cc47a5e6c2153'
  nested_container 'TimeMachineScheduler3_Installer.dmg'
  prefpane 'TimeMachineScheduler3_Installer.app/Contents/Resources/TimeMachineScheduler.prefPane'
end
