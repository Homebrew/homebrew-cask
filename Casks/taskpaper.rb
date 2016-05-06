cask 'taskpaper' do
  version '3.2'
  sha256 'a91aa7b05992abb229bd9c281ced4be0ed46d2a34d638f6e22a2bbf51eae7511'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://taskpaper.s3.amazonaws.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://taskpaper.s3.amazonaws.com/TaskPaper.rss',
          checkpoint: '84bf613325a2eaaf72581c23f6ee9b6c890a4bf47c50fbcf7ac17853206c8acb'
  name 'TaskPaper'
  homepage 'http://www.hogbaysoftware.com/products/taskpaper'
  license :commercial

  app 'TaskPaper.app'
end
