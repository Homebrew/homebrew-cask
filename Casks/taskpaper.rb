class Taskpaper < Cask
  url 'https://taskpaper.s3.amazonaws.com/TaskPaper.dmg'
  appcast 'http://www.hogbaysoftware.com/products/taskpaper/releases.rss'
  homepage 'http://www.hogbaysoftware.com/products/taskpaper'
  version 'latest'
  sha256 :no_check
  link 'TaskPaper.app'
end
