cask 'zotero' do
  version '5.0.52'
  sha256 '2a6c824e6696fd465bc3cb172bdc0c5694bf57449e8ab5b035cd83207f56afa0'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
