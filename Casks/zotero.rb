cask 'zotero' do
  version '5.0.71'
  sha256 '1b2e235df7b9dfde9dcdb09f55d64a8fef4ba3b6875721b36edf016d62e4283a'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
