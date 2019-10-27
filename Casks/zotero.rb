cask 'zotero' do
  version '5.0.76'
  sha256 '5cfeab499f7e127fd3dccc717e197b82f59e1265ae7dbf1afb551a6961ea5510'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
