cask 'zotero' do
  version '5.0.70'
  sha256 '1ee127d1c732c4d45e280fa6d3fca0ebe330ca46c9bcd9afac0edf9e2d746d41'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
