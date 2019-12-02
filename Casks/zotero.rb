cask 'zotero' do
  version '5.0.78'
  sha256 '0ab75408bb8067131a6ed813f2e7eac38e95cde1d0ab3dcb5345af2ebdfec029'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
