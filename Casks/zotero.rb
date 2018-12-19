cask 'zotero' do
  version '5.0.59'
  sha256 '64e4866f772fde18e6565638cf61d994f630a4df2484b47040f844c8169b1ca9'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
