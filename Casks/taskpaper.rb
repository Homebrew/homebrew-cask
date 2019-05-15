cask 'taskpaper' do
  version '3.8.5'
  sha256 'bd6d8f72b38a19d9e64ec81de4b6286569e64e9d3b9bb42e40496269cd97cb7d'

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://www.taskpaper.com/assets/app/TaskPaper.rss'
  name 'TaskPaper'
  homepage 'https://www.taskpaper.com/'

  auto_updates true

  app 'TaskPaper.app'
end
