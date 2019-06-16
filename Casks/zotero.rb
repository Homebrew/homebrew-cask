cask 'zotero' do
  version '5.0.67.3'
  sha256 '9a10f3ec8581ef389237175eed5839a426fe76cb796cd09c3d5748dfea1d0929'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
