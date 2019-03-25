cask 'zotero' do
  version '5.0.64'
  sha256 'f11792a845f86a9f8d519797638faeae5f96b09e77c55ee15ecd8d9b802046ec'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
