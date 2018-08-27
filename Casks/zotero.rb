cask 'zotero' do
  version '5.0.55'
  sha256 '918944616f4cb1a39dc038eabd8c6677bded4e291568dbd03bedecc75c8982c4'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
