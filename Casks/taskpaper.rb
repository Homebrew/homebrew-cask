cask 'taskpaper' do
  version :latest
  sha256 :no_check

  url 'https://www.taskpaper.com/assets/app/TaskPaper.dmg'
  name 'TaskPaper'
  homepage 'https://www.taskpaper.com/'
  license :commercial

  app 'TaskPaper.app'
end
