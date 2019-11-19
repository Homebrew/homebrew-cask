cask 'zotero' do
  version '5.0.77'
  sha256 '7e1dc037baba1ddd876f84f3cf8f0256a16c45453c5ba6721175a4d45f43c623'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
