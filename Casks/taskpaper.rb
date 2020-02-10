cask 'taskpaper' do
  version '3.8.8'
  sha256 'bd5e4d3caa5b8e8132ba8caacae2d2aaa2c9e766166f4a270a7ed41e926f59a2'

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://www.taskpaper.com/assets/app/TaskPaper.rss'
  name 'TaskPaper'
  homepage 'https://www.taskpaper.com/'

  auto_updates true

  app 'TaskPaper.app'
end
