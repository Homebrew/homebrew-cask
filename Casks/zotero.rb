cask 'zotero' do
  version '4.0.29.2'
  sha256 '6842d3548bdbae52457d7259322f4b272ba8f75420672294612722c0b22c5d2c'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  name 'Zotero'
  homepage 'https://www.zotero.org/'
  license :affero

  app 'Zotero.app'
end
