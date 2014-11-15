cask :v1 => 'tagaini-jisho' do
  version '1.0.1'
  sha256 'fda5a6da2f2854e5497329b81e6bd1eb210cd89aab50e373e120d687653edb27'

  url "https://github.com/Gnurou/tagainijisho/releases/download/#{version}/Tagaini.Jisho-#{version}.dmg"
  homepage 'http://www.tagaini.net/'
  license :gpl

  app 'Tagaini Jisho.app'
end
