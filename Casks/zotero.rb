cask 'zotero' do
  version '5.0.73'
  sha256 '15b9298782cea93c362a2155e610a7cc20fdbfa056a711a0e73797c617bbaf0e'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
