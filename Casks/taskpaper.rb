cask 'taskpaper' do
  version '3.8.6'
  sha256 'b2c439c45c842e692e25a9d186204c5df62c6d2878cd3b98e2c452e5a17fac7f'

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://www.taskpaper.com/assets/app/TaskPaper.rss'
  name 'TaskPaper'
  homepage 'https://www.taskpaper.com/'

  auto_updates true

  app 'TaskPaper.app'
end
