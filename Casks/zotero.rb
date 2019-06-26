cask 'zotero' do
  version '5.0.69'
  sha256 '30df6c5a1e7e22a457ce5ad070893259e981b4af588078372199c9660bdc28a3'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
