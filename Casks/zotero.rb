cask 'zotero' do
  version '5.0.41'
  sha256 '2119f127d10374862f834dc29abf7c4eee9918993e5cabcdfca66294d0dcdfaa'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'e3e5d149956d4b5ec73cd0655b02e4167860d2ebe6f040bc77582482ef711deb'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
