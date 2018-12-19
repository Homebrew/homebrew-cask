cask 'taskpaper' do
  version '3.8.2'
  sha256 '9908e241ac112450732f11c3a2cf5012ecc29a624b480ff38fc5db5ac7599907'

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://www.taskpaper.com/assets/app/TaskPaper.rss'
  name 'TaskPaper'
  homepage 'https://www.taskpaper.com/'

  auto_updates true

  app 'TaskPaper.app'
end
