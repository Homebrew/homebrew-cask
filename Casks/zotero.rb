cask 'zotero' do
  version '5.0.56'
  sha256 'd9b6f00729af55a32a6d29bdc084be3d8015bdb255f133fd570cf543bd002ac7'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
