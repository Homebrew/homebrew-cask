cask 'zotero' do
  version '5.0.80'
  sha256 '170f2ddaaf4dabe051b5c9c4b0cf1df8abff7a7a5cec495dff907a3e29c970ed'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
