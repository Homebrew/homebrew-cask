cask 'zotero' do
  version '5.0.85'
  sha256 'e29c060557743996704bc9dba8f22573e144c8fff30da3b8b685d23da9186395'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
