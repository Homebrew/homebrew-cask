cask 'taskpaper' do
  version '3.8.1'
  sha256 '06ad9a1ad7419ca9f99bafccc5462c51ce592f5c28cefa919887f97590681b42'

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://www.taskpaper.com/assets/app/TaskPaper.rss'
  name 'TaskPaper'
  homepage 'https://www.taskpaper.com/'

  auto_updates true

  app 'TaskPaper.app'
end
