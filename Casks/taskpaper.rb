cask 'taskpaper' do
  version '3.1'
  sha256 '91b28efa694ab81d2b7c12082c1225d6a3095c986a540bb98df1f4f619b85687'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://taskpaper.s3.amazonaws.com/assets/app/TaskPaper-#{version}.dmg"
  appcast 'https://taskpaper.s3.amazonaws.com/TaskPaper.rss',
          checkpoint: '94e5c68e5a2b997da3086e2fb3b7dff9a09e1bd0602776a37c51b05ef6e63fe9'
  name 'TaskPaper'
  homepage 'http://www.hogbaysoftware.com/products/taskpaper'
  license :commercial

  app 'TaskPaper.app'
end
