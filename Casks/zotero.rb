cask 'zotero' do
  version '5.0.87'
  sha256 'd17626d4f79c268c9ce5a7c519325807f98dbd244b3f2c287eb76ae5339e661a'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
