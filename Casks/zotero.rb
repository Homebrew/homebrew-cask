cask 'zotero' do
  version '5.0.63'
  sha256 '7bee404260fa41a880c64976eb72f297171705769fa0fed7e0b995fb13f19973'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
