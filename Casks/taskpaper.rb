class Taskpaper < Cask
  version 'latest'
  sha256 :no_check

  url 'https://taskpaper.s3.amazonaws.com/TaskPaper.dmg'
  appcast 'http://www.hogbaysoftware.com/products/taskpaper/releases.rss'
  homepage 'http://www.hogbaysoftware.com/products/taskpaper'

  app 'TaskPaper.app'
end
