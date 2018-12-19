cask 'zotero' do
  version '5.0.58'
  sha256 '3fc7ddf750acc772d7dab969bee87e7396b71b0d33e3df58732aa7cac74f0fb5'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
