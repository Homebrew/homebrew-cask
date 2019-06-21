cask 'zotero' do
  version '5.0.68'
  sha256 'a195747b7302dba66195ac256ae3913a8e9844739f667984b38e0408ca3d4c3b'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
