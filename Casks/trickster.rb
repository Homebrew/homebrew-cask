cask :v1 => 'trickster' do
  version '2.3.2'
  sha256 'ff5a906c0f2d4a29bd6614c29be73220618ab65e45bfa4e1d30bb7467ca0ee28'

  url "http://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'http://dl.apparentsoft.com/trickster.rss',
          :sha256 => '092c7ba2e9ad8246634ac5991a437655dd2f7296fc4cdaabd80c4f65cc1bcd4d'
  name 'Trickster'
  homepage 'http://www.apparentsoft.com/trickster/'
  license :commercial

  app 'Trickster.app'
end
