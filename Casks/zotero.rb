cask 'zotero' do
  version '5.0.82'
  sha256 '85de73413509767ef94b2cc16e4af26ac7dcb3168073e7b77942785bd82f513e'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
