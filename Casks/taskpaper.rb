cask 'taskpaper' do
  version '3.7.7'
  sha256 '927026589ce92ff78146c363c86ba566b710de42bcb06c27395ddf7b2a36c4e8'

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://www.taskpaper.com/assets/app/TaskPaper.rss'
  name 'TaskPaper'
  homepage 'https://www.taskpaper.com/'

  app 'TaskPaper.app'
end
