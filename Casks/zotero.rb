cask 'zotero' do
  version '5.0.74'
  sha256 'b32e12d717265510dd54b564875ba837737a469de03ba4913eeba41fa7087a98'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
