cask 'taskpaper' do
  version '3.8.3'
  sha256 'bff89f3bd830c9c7672b0cca322832adb4930f4c9069cdb62bca09458a4fa40f'

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://www.taskpaper.com/assets/app/TaskPaper.rss'
  name 'TaskPaper'
  homepage 'https://www.taskpaper.com/'

  auto_updates true

  app 'TaskPaper.app'
end
