cask 'zotero' do
  version '5.0.67'
  sha256 '713c0e5cb515080921a1f56075b7a984e4578303bd0a623ab182bcc525b2f215'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
