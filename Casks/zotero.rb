cask 'zotero' do
  version '5.0.61'
  sha256 'e66b583b5802802c5207f1ece7a90ec061f10e9c8b98c3cd7dd3c6dfecf1fc12'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
