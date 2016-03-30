cask 'taskpaper' do
  version '3.0.1'
  sha256 '28c4a9b66f94d618c08e406b943fdcaf5fb1a851d1d79f6b5c72d1dc091d5b95'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://taskpaper.s3.amazonaws.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://taskpaper.s3.amazonaws.com/TaskPaper.rss',
          checkpoint: 'b6c1c82c5dd0f12f207e4634ba6d59cfcd169e3750e8964367f272782dc13272'
  name 'TaskPaper'
  homepage 'http://www.hogbaysoftware.com/products/taskpaper'
  license :commercial

  app 'TaskPaper.app'
end
