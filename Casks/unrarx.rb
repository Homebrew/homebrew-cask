cask :v1 => 'unrarx' do
  version '2.2'
  sha256 '616c5c536efb29a35fe45c8171874592cc28b269e5d7ed6947c19c8cbb686955'

  url "http://www.unrarx.com/files/UnRarX_#{version}.zip"
  appcast 'http://www.unrarx.com/update.xml',
          :sha256 => '64b9cf92511cbef012dbf9b03381d7f6b883fbbf879ae04ec5899fd49507d0c4'
  homepage 'http://www.unrarx.com'
  license :unknown    # todo: improve this machine-generated value

  app 'UnRarX.app'
end
