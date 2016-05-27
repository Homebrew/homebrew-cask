cask 'taskpaper' do
  version '3.3.1'
  sha256 '94c57b9b34753595ba91e1cdfa454aa1db67b639e03f8237c3d6de83d48f6796'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://taskpaper.s3.amazonaws.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://taskpaper.s3.amazonaws.com/TaskPaper.rss',
          checkpoint: 'd7cdc5831a950d1a6f3694e5f7cb241980fdf3535856ff35ade154abd441de43'
  name 'TaskPaper'
  homepage 'http://www.hogbaysoftware.com/products/taskpaper'
  license :commercial

  app 'TaskPaper.app'
end
