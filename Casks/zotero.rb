cask 'zotero' do
  version '5.0.33'
  sha256 '0dad0bb44855d8dcfedb78d254f15c8dcf69dbb38a80aa186e35d53e931af674'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'c513cf6f253c0dfe3c7e99bed72805cb0e3afccf37798f08d8bb499f0f5e9ad5'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
