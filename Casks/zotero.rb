cask 'zotero' do
  version '5.0.88'
  sha256 'a38ed6d887453e38cebea272fc2d0e21d93f97f11bfbca8fc75ab0b5c697f691'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
