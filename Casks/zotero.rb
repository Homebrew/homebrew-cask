cask 'zotero' do
  version '5.0.89'
  sha256 'bc56086c4305e138d2a7032b8ecacbc2c0bd8f3e4c3eb2c271eeb641ed381621'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
