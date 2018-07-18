cask 'zotero' do
  version '5.0.53'
  sha256 '0c6315b06e6d45f6ea676079a10bb96c6a31aaec6665aa739ce97960b0022961'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
