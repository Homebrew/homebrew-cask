cask 'zotero' do
  version '5.0.57'
  sha256 'c6eef8f86b9e8e997a1bd5613cba5d7262d8f8d04519e963fa256ef729658d72'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
