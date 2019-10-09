cask 'zotero' do
  version '5.0.75'
  sha256 'de71b6fd42560a13ac67a21f9087cd18caadd5785abf7fd347d84e7591cb7208'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
