cask :v1 => 'taskpaper' do
  version :latest
  sha256 :no_check

  url 'https://taskpaper.s3.amazonaws.com/TaskPaper.dmg'
  appcast 'http://www.hogbaysoftware.com/products/taskpaper/releases.rss'
  homepage 'http://www.hogbaysoftware.com/products/taskpaper'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TaskPaper.app'
end
