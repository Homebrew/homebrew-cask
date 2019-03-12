cask 'taskpaper' do
  version '3.8.4'
  sha256 'aa4812c21d41a32ccdb729de409dbf079dbcaa8230f4182b6433a004dd09b676'

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://www.taskpaper.com/assets/app/TaskPaper.rss'
  name 'TaskPaper'
  homepage 'https://www.taskpaper.com/'

  auto_updates true

  app 'TaskPaper.app'
end
