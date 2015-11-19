cask :v1 => 'timemachinescheduler' do
  version '3.1.4'
  sha256 '22b0976139c42d163aa7d905d845594af41d4f3d4254a21b334f0232b3815f0a'

  url "http://www.klieme.com/Downloads/TimeMachineScheduler/TimeMachineScheduler_#{version}.zip"
  appcast 'http://www.klieme.com/Downloads/TimeMachineScheduler/appcast.xml',
          :sha256 => '2a2ac94fe0dee03907844876ac83ff5dee8f610be042d8b5f32d145eaae8ef55'
  name 'TimeMachineScheduler'
  homepage 'http://www.klieme.com/TimeMachineScheduler.html'
  license :gratis

  container :nested => 'TimeMachineScheduler3_Installer.dmg'
  prefpane 'TimeMachineScheduler3_Installer.app/Contents/Resources/TimeMachineScheduler.prefPane'
end
