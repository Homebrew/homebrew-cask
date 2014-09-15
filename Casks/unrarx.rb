class Unrarx < Cask
  version '2.2'
  sha256 '616c5c536efb29a35fe45c8171874592cc28b269e5d7ed6947c19c8cbb686955'

  url 'http://www.unrarx.com/files/UnRarX_2.2.zip'
  appcast 'http://www.unrarx.com/update.xml'
  homepage 'http://www.unrarx.com'

  app 'UnRarX.app'
end
