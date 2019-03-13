cask 'zotero' do
  version '5.0.62'
  sha256 'e8d7fea76050f0a9f4ef917ab73051af065f5bbf64407e832e914c740b6697e1'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
