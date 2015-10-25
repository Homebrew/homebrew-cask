cask :v1 => 'zotero' do
  version '4.0.28.8'
  sha256 'c7e9aa8e8dbd4b447ec291ce0d0814740a3b1e42f9241fe0bdc0298ee8d7645e'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  name 'Zotero'
  homepage 'https://www.zotero.org/'
  license :affero

  app 'Zotero.app'
end
